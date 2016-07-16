package com.internet.monkey.system;

import com.internet.monkey.datatables.DataTablesPage;
import com.internet.monkey.datatables.DataTablesResponse;
import com.internet.monkey.system.log.pojo.SystemLog;
import com.internet.monkey.system.log.service.SystemLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by panzhuowen on 2016/3/5 001.
 */
@Controller
@RequestMapping("/b/log")
public class LogController {

    @Autowired
    private SystemLogService systemLogService;

    @RequestMapping(method = RequestMethod.GET)
    public String log() {
        return "system/log";
    }

    @RequestMapping("/getSystemLogListPage")
    @ResponseBody
    public DataTablesResponse<SystemLog> getSystemLogListPage(DataTablesPage dataTablesPage,SystemLog systemLog) {
        return new DataTablesResponse<>(dataTablesPage,systemLogService.getSystemLogListPage(dataTablesPage,systemLog));
    }

}
