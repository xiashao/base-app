package com.internet.monkey.system.log.service;

import com.internet.monkey.constant.Constant;
import com.internet.monkey.page.Page;
import com.internet.monkey.page.PageInterceptor;
import com.internet.monkey.system.log.dao.LogDao;
import com.internet.monkey.system.log.pojo.SystemLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/3/4 001.
 */
@Service
public class SystemLogService {

    @Autowired
    private LogDao logDao;


    public boolean insertSystemLog(SystemLog systemLog) {
        return logDao.insertSystemLog(systemLog) == Constant.FUNCTION_RETURN;
    }

    public List<SystemLog> getSystemLogListPage(Page page, SystemLog systemLog) {
        PageInterceptor.startPage(page);
        return logDao.getSystemLogListPage(systemLog);
    }

}
