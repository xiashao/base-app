package com.internet.monkey.page.parse;

import com.internet.monkey.page.Page;
import com.internet.monkey.util.StringUtil;

/**
 * Created by pzw on 2/2/2016.
 */
public abstract class AbstractSqlParser implements SqlParser {
    public AbstractSqlParser() {
    }

    protected String getSortSql(Page page) {
        if(this.isSortFieldEmptyOrIllegal(page)) {
            return "";
        } else {
            StringBuilder sortSql = new StringBuilder(" order by ");
            String[] sortFields = page.getSortField().split(",");
            String[] sortOrders = this.getSortOrderArray(page);

            for(int i = 0; i < sortFields.length; ++i) {
                String sortField = sortFields[i];
                if(StringUtil.isEmpty(sortField)) {
                    break;
                }

                if(sortField.endsWith("IsZh")) {
                    this.getZhSortField(sortSql, sortField);
                } else {
                    sortSql.append(sortField);
                }

                if(sortOrders != null) {
                    sortSql.append(" ").append(sortOrders[i]);
                }

                sortSql.append(",");
            }

            return sortSql.deleteCharAt(sortSql.length() - 1).toString();
        }
    }

    abstract void getZhSortField(StringBuilder var1, String var2);

    private String[] getSortOrderArray(Page page) {
        String[] sortOrders;
        if(StringUtil.isEmpty(page.getSortOrder())) {
            sortOrders = null;
        } else {
            if(page.getSortOrder().contains(" ")) {
                throw new IllegalArgumentException("sortOrder不能包含空格");
            }

            sortOrders = page.getSortOrder().split(",");
        }

        return sortOrders;
    }

    private boolean isSortFieldEmptyOrIllegal(Page page) {
        if(StringUtil.isEmpty(page.getSortField())) {
            return true;
        } else if(page.getSortField().contains(" ")) {
            throw new IllegalArgumentException("sortField不能包含空格");
        } else {
            return false;
        }
    }
}

