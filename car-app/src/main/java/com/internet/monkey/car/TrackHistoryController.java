package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.app.car.pojo.TrackHistory;
import com.internet.monkey.app.car.service.TrackHistoryService;
import com.internet.monkey.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/trackHistory/")
public class TrackHistoryController {

    @Autowired
    private TrackHistoryService trackHistoryService;


    @RequestMapping(value = "addTrackHistory", method = RequestMethod.POST)
    public AjaxResponseBody addTrackHistory(TrackHistory trackHistory) {
        return AjaxResponseBody.getOperateResultInstance(trackHistoryService.addTrackHistory(trackHistory));
    }

    @RequestMapping(value = "getTrackHistory",method = RequestMethod.POST)
    public AjaxResponseBody getTrackHistory(Page page, String userId) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        int pageNo = page.getPageNo();
        List<TrackHistory> trackHistoryList = trackHistoryService.getTrackHistoryListPage(page, userId);
        if (pageNo > page.getPageNo()) {
            ajaxResponseBody.addAttribute("trackHistoryList", new ArrayList<>());
        } else {
            ajaxResponseBody.addAttribute("trackHistoryList", trackHistoryList);
        }
        return ajaxResponseBody;
    }

}
