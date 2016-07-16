package com.internet.monkey.page.parse;

import com.internet.monkey.page.Page;

/**
 * Created by pzw on 2/2/2016.
 */
public class OracleParser extends AbstractSqlParser implements SqlParser {
    public OracleParser() {
    }

    public String getPageSql(String sql, Page page) {
        return "select * from (select tmp_tb.*,ROWNUM row_id from (" + sql + this.getSortSql(page) + ") tmp_tb where ROWNUM<=" + (page.getCurrentResult() + page.getPageSize()) + ") where row_id>" + page.getCurrentResult();
    }

    void getZhSortField(StringBuilder sortSql, String sortField) {
        sortSql.append("NLSSORT(").append(sortField.substring(0, sortField.lastIndexOf("IsZh"))).append(",\'NLS_SORT = SCHINESE_PINYIN_M\')");
    }
}
