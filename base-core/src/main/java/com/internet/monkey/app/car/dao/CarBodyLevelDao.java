package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.CarBodyLevel;

import java.util.List;

/**
 * Created by panzhuowen on 2016/5/7 001.
 */
@RepositoryImpl
public interface CarBodyLevelDao {

    CarBodyLevel getCarBodyLevelByName(String name);

    List<CarBodyLevel> getAllCarBodyLevel();
}
