package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.CarRecordDao;
import com.internet.monkey.app.car.pojo.CarInfo;
import com.internet.monkey.app.car.pojo.CarRecord;
import com.internet.monkey.page.Page;
import com.internet.monkey.page.PageInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class CarRecordService {

    @Autowired
    private CarRecordDao carRecordDao;


    public List<CarRecord> getCarRecordListPage(Page page,String carId) {
        PageInterceptor.startPage(page);
        return carRecordDao.getCarRecordListPage(carId);
    }

    public boolean addCarRecord(CarRecord carRecord) {
        return carRecordDao.addCarRecord(carRecord);
    }

    public CarRecord getCarRecordById(String id) {
        return carRecordDao.getCarRecordById(id);
    }

    public boolean updateLampStatus(CarInfo carInfo){return carRecordDao.updateLampStatus(carInfo);}

    public boolean updateEnginePerformance(CarInfo carInfo){return carRecordDao.updateEnginePerformance(carInfo);}

    public boolean updateTransmissionPerformance(CarInfo carInfo){return carRecordDao.updateTransmissionPerformance(carInfo);}

    public boolean updateFuelAmount(CarInfo carInfo){return carRecordDao.updateFuelAmount(carInfo);}

    public boolean updateExpendNumber(CarInfo carInfo){return carRecordDao.updateExpendNumber(carInfo);}
}
