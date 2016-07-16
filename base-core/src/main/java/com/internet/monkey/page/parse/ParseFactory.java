package com.internet.monkey.page.parse;

import com.internet.monkey.page.Dialect;
import com.internet.monkey.page.parse.MysqlParser;
import com.internet.monkey.page.parse.OracleParser;
import com.internet.monkey.page.parse.SqlParser;
import com.internet.monkey.page.parse.SqlServerParser;

/**
 * Created by pzw on 2/2/2016.
 */
public class ParseFactory {
    public ParseFactory() {
    }

    public static SqlParser getParse(String strDialect) {
        Dialect dialect = Dialect.of(strDialect);
        Object sqlParser = null;
        switch(dialect) {
            case mysql:
            case mariadb:
            case sqlite:
                sqlParser = new MysqlParser();
                break;
            case oracle:
                sqlParser = new OracleParser();
                break;
            case mssql:
                sqlParser = new SqlServerParser();
        }

        return (SqlParser)sqlParser;
    }
}
