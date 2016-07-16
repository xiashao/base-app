package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.TrackHistory;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RepositoryImpl
public interface TrackHistoryDao {

    boolean addTrackHistory(TrackHistory trackHistory);

    List<TrackHistory> getTrackHistory(String userId);

}
