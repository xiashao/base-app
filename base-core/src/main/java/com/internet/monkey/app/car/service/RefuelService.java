package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.CarRefuelDao;
import com.internet.monkey.app.car.pojo.CarRefuelType;
import com.internet.monkey.app.car.pojo.RefuelType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/5/7 001.
 */
@Service
public class RefuelService {

    @Autowired
    private CarRefuelDao carRefuelDao;

    public List<CarRefuelType> getRefuelByUserAndCar(String userId,String carId) {
        return carRefuelDao.getRefuelByCar(carId);
    }

    public List<RefuelType> getAllRefuelType(){return carRefuelDao.getAllRefuelType();}

}
