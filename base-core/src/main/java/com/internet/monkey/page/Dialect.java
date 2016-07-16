package com.internet.monkey.page;

/**
 * Created by pzw on 2/2/2016.
 */
public enum Dialect {
    mysql, mariadb, sqlite, oracle, mssql;

    public static Dialect of(String dialect) {
        try {
            return Dialect.valueOf(dialect);
        } catch (IllegalArgumentException e) {
            String dialects = null;
            for (Dialect d : Dialect.values()) {
                if (dialects == null) {
                    dialects = d.toString();
                } else {
                    dialects += "," + d;
                }
            }
            throw new IllegalArgumentException("Mybatis分页插件dialect参数值错误，可选值为[" + dialects + "]");
        }
    }
}