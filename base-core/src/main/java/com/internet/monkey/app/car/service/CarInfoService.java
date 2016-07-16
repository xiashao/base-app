package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.CarInfoDao;
import com.internet.monkey.app.car.dao.CarRefuelDao;
import com.internet.monkey.app.car.pojo.CarInfo;
import com.internet.monkey.app.car.pojo.CarRefuelType;
import com.internet.monkey.app.car.pojo.RefuelType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class CarInfoService {

    @Autowired
    private CarInfoDao carInfoDao;

    @Autowired
    private CarRefuelDao carRefuelDao;

    public List<CarInfo> getCarInfoByUserId(String userId) {
        List<CarInfo> result = carInfoDao.getCarInfoByUserId(userId);
        if (result!=null){
            for (int i = 0;i<result.size();i++){
                result.get(i).getRefuelType().addAll(carRefuelDao.getRefuelByCar(result.get(i).getId()));
            }
        }
        return result;
    }

    public boolean deleteCarInfo(String id) {
        return  carInfoDao.deleteCarInfoById(id);
    }

    public boolean addCarInfo(CarInfo carInfo) {
        System.out.println(carInfo.getId());
        boolean flag = carInfoDao.addCarInfo(carInfo);
        if (!flag){
            return flag;
        }
        flag = carInfoDao.addCarChangeInfo(carInfo);
        if (!flag){
            return flag;
        }
        if (carInfo.getStringRefuelType()!=null){
            String [] refuel = carInfo.getStringRefuelType().split(",");
            for (int i=0;i<refuel.length;i++){
                flag = carRefuelDao.addCarRefuelType(carInfo.getId(),refuel[i]);
            }
        }else {
            flag = false;
        }
        return flag;
    }

    public boolean updateCarInfo(CarInfo carInfo) {
        return carInfoDao.updateCarInfo(carInfo);
    }

    public CarInfo getCarInfoById(String id) {
        return carInfoDao.getCarInfoById(id);
    }

    public String getCarIdByCarNum(String carNum) {
        return carInfoDao.getCarIdByCarNum(carNum);
    }

    public CarInfo getCarChangeInfo(String carId) {return carInfoDao.getCarChangeInfo(carId);}

    public CarInfo getDetailCarInfoByCarId(String carId) {
       CarInfo result =  carInfoDao.getDetailCarInfoByCarId(carId);
       if (result!=null){
           result.getRefuelType().addAll(carRefuelDao.getRefuelByCar(result.getId()));
       }
        return result;
    }
}
