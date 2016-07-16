package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.TrackHistoryDao;
import com.internet.monkey.app.car.pojo.TrackHistory;
import com.internet.monkey.page.Page;
import com.internet.monkey.page.PageInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class TrackHistoryService {

    @Autowired
    private TrackHistoryDao trackHistoryDao;

    public boolean addTrackHistory(TrackHistory trackHistory) {
        return trackHistoryDao.addTrackHistory(trackHistory);
    }

    public List<TrackHistory> getTrackHistoryListPage(Page page, String userId) {
        PageInterceptor.startPage(page);
        return trackHistoryDao.getTrackHistory(userId);
    }
}
