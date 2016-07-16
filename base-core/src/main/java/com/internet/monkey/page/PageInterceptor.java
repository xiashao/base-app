package com.internet.monkey.page;

import com.internet.monkey.page.parse.ParseFactory;
import com.internet.monkey.page.parse.SqlParser;
import com.internet.monkey.util.ReflectUtil;
import com.internet.monkey.util.StringUtil;
import org.apache.ibatis.executor.ErrorContext;
import org.apache.ibatis.executor.ExecutorException;
import org.apache.ibatis.executor.statement.BaseStatementHandler;
import org.apache.ibatis.executor.statement.RoutingStatementHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.ParameterMode;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.property.PropertyTokenizer;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.type.TypeHandler;
import org.apache.ibatis.type.TypeHandlerRegistry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.xml.bind.PropertyException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by pzw on 2/2/2016.
 */
@Intercepts({@Signature(type = StatementHandler.class,method = "prepare",args = {Connection.class})})
public class PageInterceptor implements Interceptor {
    Logger logger = LoggerFactory.getLogger(this.getClass());
    private SqlParser sqlParser;
    private static final ThreadLocal<Page> LOCAL_PAGE = new ThreadLocal();

    public PageInterceptor() {
    }

    public static void startPage(Page page) {
        LOCAL_PAGE.set(page);
    }

    private static Page getLocalPage() {
        return (Page)LOCAL_PAGE.get();
    }

    private static void clearLocalPage() {
        LOCAL_PAGE.remove();
    }

    public Object intercept(Invocation invocation) throws Throwable {
        Page page = getLocalPage();
        if(page == null) {
            return invocation.proceed();
        } else {
            try {
                if(invocation.getTarget() instanceof RoutingStatementHandler) {
                    RoutingStatementHandler statementHandler = (RoutingStatementHandler)invocation.getTarget();
                    BaseStatementHandler delegate = (BaseStatementHandler) ReflectUtil.getValueByFieldName(statementHandler, "delegate");
                    BoundSql boundSql = delegate.getBoundSql();
                    Connection connection = (Connection)invocation.getArgs()[0];
                    page.setTotalResult(this.getTotalResult(statementHandler, connection));
                    if(page.hasSumColumns() && page.lessThanMaxSumLimit()) {
                        page.setSumResult(this.getSumResult(statementHandler, connection, page));
                    }

                    String pageSql = this.sqlParser.getPageSql(boundSql.getSql(), page);
                    ReflectUtil.setValueByFieldName(boundSql, "sql", pageSql);
                }
            } finally {
                clearLocalPage();
            }

            return invocation.proceed();
        }
    }

    private int getTotalResult(RoutingStatementHandler statementHandler, Connection connection) {
        int totalResult = 0;

        try {
            BaseStatementHandler e = (BaseStatementHandler)ReflectUtil.getValueByFieldName(statementHandler, "delegate");
            MappedStatement mappedStatement = (MappedStatement)ReflectUtil.getValueByFieldName(e, "mappedStatement");
            BoundSql boundSql = e.getBoundSql();
            Object parameterObject = boundSql.getParameterObject();
            String sql = boundSql.getSql();
            String countSql = "select count(0) from (" + sql + ") tmp_count";
            PreparedStatement countStmt = connection.prepareStatement(countSql);
            BoundSql countBS = this.copyFromBoundSql(mappedStatement, boundSql, countSql);
            this.setParameters(countStmt, mappedStatement, countBS, parameterObject);
            ResultSet rs = countStmt.executeQuery();
            if(rs.next()) {
                totalResult = rs.getInt(1);
            }

            rs.close();
            countStmt.close();
        } catch (SQLException var13) {
            this.logger.error("error", var13);
        }

        return totalResult;
    }

    private Map<String, String> getSumResult(RoutingStatementHandler statementHandler, Connection connection, Page page) throws SQLException {
        HashMap sumResultMap = new HashMap();

        try {
            BaseStatementHandler e = (BaseStatementHandler)ReflectUtil.getValueByFieldName(statementHandler, "delegate");
            MappedStatement mappedStatement = (MappedStatement)ReflectUtil.getValueByFieldName(e, "mappedStatement");
            BoundSql boundSql = e.getBoundSql();
            Object parameterObject = boundSql.getParameterObject();
            String sql = boundSql.getSql();
            String sumSql = this.getSumSql(sql, page);
            PreparedStatement sumStatement = connection.prepareStatement(sumSql);
            BoundSql sumBoundSql = this.copyFromBoundSql(mappedStatement, boundSql, sumSql);
            this.setParameters(sumStatement, mappedStatement, sumBoundSql, parameterObject);
            ResultSet rs = sumStatement.executeQuery();
            if(rs.next()) {
                String[] arr$ = page.getSumColumns();
                int len$ = arr$.length;

                for(int i$ = 0; i$ < len$; ++i$) {
                    String sumColumn = arr$[i$];
                    sumResultMap.put(sumColumn, rs.getString(sumColumn));
                }
            }

            rs.close();
            sumStatement.close();
            page.setSumResult(sumResultMap);
        } catch (SQLException var18) {
            this.logger.error("error", var18);
        }

        return sumResultMap;
    }

    private BoundSql copyFromBoundSql(MappedStatement ms, BoundSql boundSql, String sql) {
        BoundSql newBoundSql = new BoundSql(ms.getConfiguration(), sql, boundSql.getParameterMappings(), boundSql.getParameterObject());
        Iterator i$ = boundSql.getParameterMappings().iterator();

        while(i$.hasNext()) {
            ParameterMapping mapping = (ParameterMapping)i$.next();
            String prop = mapping.getProperty();
            if(boundSql.hasAdditionalParameter(prop)) {
                newBoundSql.setAdditionalParameter(prop, boundSql.getAdditionalParameter(prop));
            }
        }

        return newBoundSql;
    }

    private String getSumSql(String sql, Page page) {
        String sumSql = "SELECT ";
        String[] arr$ = page.getSumColumns();
        int len$ = arr$.length;

        for(int i$ = 0; i$ < len$; ++i$) {
            String column = arr$[i$];
            sumSql = sumSql + " IFNULL(SUM(" + column + "),0) AS " + column + ",";
        }

        sql = sumSql.substring(0, sumSql.length() - 1) + " FROM (" + sql + ") a";
        return sql;
    }

    private void setParameters(PreparedStatement ps, MappedStatement mappedStatement, BoundSql boundSql, Object parameterObject) throws SQLException {
        ErrorContext.instance().activity("setting parameters").object(mappedStatement.getParameterMap().getId());
        List parameterMappings = boundSql.getParameterMappings();
        if(parameterMappings != null) {
            Configuration configuration = mappedStatement.getConfiguration();
            TypeHandlerRegistry typeHandlerRegistry = configuration.getTypeHandlerRegistry();
            MetaObject metaObject = parameterObject == null?null:configuration.newMetaObject(parameterObject);

            for(int i = 0; i < parameterMappings.size(); ++i) {
                ParameterMapping parameterMapping = (ParameterMapping)parameterMappings.get(i);
                if(parameterMapping.getMode() != ParameterMode.OUT) {
                    String propertyName = parameterMapping.getProperty();
                    PropertyTokenizer prop = new PropertyTokenizer(propertyName);
                    Object value;
                    if(parameterObject == null) {
                        value = null;
                    } else if(typeHandlerRegistry.hasTypeHandler(parameterObject.getClass())) {
                        value = parameterObject;
                    } else if(boundSql.hasAdditionalParameter(propertyName)) {
                        value = boundSql.getAdditionalParameter(propertyName);
                    } else if(propertyName.startsWith("__frch_") && boundSql.hasAdditionalParameter(prop.getName())) {
                        value = boundSql.getAdditionalParameter(prop.getName());
                        if(value != null) {
                            value = configuration.newMetaObject(value).getValue(propertyName.substring(prop.getName().length()));
                        }
                    } else {
                        value = metaObject == null?null:metaObject.getValue(propertyName);
                    }

                    TypeHandler typeHandler = parameterMapping.getTypeHandler();
                    if(typeHandler == null) {
                        throw new ExecutorException("There was no TypeHandler found for parameter " + propertyName + " of statement " + mappedStatement.getId());
                    }

                    typeHandler.setParameter(ps, i + 1, value, parameterMapping.getJdbcType());
                }
            }
        }

    }

    public Object plugin(Object arg0) {
        return Plugin.wrap(arg0, this);
    }

    public void setProperties(Properties p) {
        String dialect = p.getProperty("dialect");
        if(StringUtil.isEmpty(dialect)) {
            try {
                throw new PropertyException("dialect property is not found!");
            } catch (PropertyException var4) {
                this.logger.error("error", var4);
            }
        }

        this.sqlParser = ParseFactory.getParse(dialect);
    }
}
