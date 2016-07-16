package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.CarTypeDao;
import com.internet.monkey.app.car.pojo.CarType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class CarTypeService {

    @Autowired
    private CarTypeDao carTypeDao;


    public List<CarType> getCarTypeList(String carTypeId) {
        return carTypeDao.getCarTypeList(carTypeId);
    }

    public CarType getCarTypeByName(String name) {
        return carTypeDao.getCarTypeByName(name);
    }

}
