package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.CarBodyLevelDao;
import com.internet.monkey.app.car.pojo.CarBodyLevel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/5/7 001.
 */
@Service
public class CarBodyLevelService {

    @Autowired
    private CarBodyLevelDao carBodyLevelDao;

    public CarBodyLevel getCarBodyLevelByName(String name) {
        return  carBodyLevelDao.getCarBodyLevelByName(name);
    }

    public List<CarBodyLevel> getAllCarBodyLevel(){return carBodyLevelDao.getAllCarBodyLevel();}
}
