package com.internet.monkey.system.log.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.system.log.pojo.SystemLog;

import java.util.List;

/**
 * Created by panzhuowen on 2016/3/4 001.
 */
@RepositoryImpl
public interface LogDao {

    int insertSystemLog(SystemLog systemLog);

    List<SystemLog> getSystemLogListPage(SystemLog systemLog);

}
