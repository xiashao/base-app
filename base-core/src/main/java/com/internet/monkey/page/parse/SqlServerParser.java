package com.internet.monkey.page.parse;

import com.internet.monkey.page.Page;

/**
 * Created by pzw on 2/2/2016.
 */
public class SqlServerParser extends AbstractSqlParser implements SqlParser {
    public SqlServerParser() {
    }

    public String getPageSql(String sql, Page page) {
        String sortSql = this.getSortSql(page);
        int currentResult = page.getCurrentResult();
        String result = "select top " + page.getPageSize() + " * from (select row_number() over(";
        if(sortSql.equals("")) {
            result = result + " order by (select 0)";
        } else {
            result = result + sortSql;
        }

        result = result + ")as rownumber,* from (" + sql + ") temp)A where rownumber>" + currentResult;
        return result;
    }

    void getZhSortField(StringBuilder sortSql, String sortField) {
    }
}