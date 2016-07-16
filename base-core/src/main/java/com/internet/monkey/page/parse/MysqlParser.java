package com.internet.monkey.page.parse;

import com.internet.monkey.page.Page;

/**
 * Created by pzw on 2/2/2016.
 */
public class MysqlParser extends AbstractSqlParser implements SqlParser {
    public MysqlParser() {
    }

    public String getPageSql(String sql, Page page) {
        return sql + this.getSortSql(page) + " limit " + page.getCurrentResult() + "," + page.getPageSize();
    }

    void getZhSortField(StringBuilder sortSql, String sortField) {
        sortSql.append("CONVERT(").append(sortField.substring(0, sortField.lastIndexOf("IsZh"))).append(" USING gbk)");
    }
}