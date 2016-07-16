package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.CarInfo;
import com.internet.monkey.app.car.pojo.CarRecord;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RepositoryImpl
public interface CarRecordDao {

    List<CarRecord> getCarRecordListPage(String carId);

    boolean addCarRecord(CarRecord carRecord);

    CarRecord getCarRecordById(String id);

    boolean updateLampStatus(CarInfo carInfo);

    boolean updateEnginePerformance(CarInfo carInfo);

    boolean updateTransmissionPerformance(CarInfo carInfo);

    boolean updateFuelAmount(CarInfo carInfo);

    boolean updateExpendNumber(CarInfo carInfo);
}
