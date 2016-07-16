package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.CarInfo;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RepositoryImpl
public interface CarInfoDao {

    /**
     * 这里carinfo中一些数据返回的是数字，将对应的常量表同步至android端
     * 在那边转换显示
     * @param userId
     * @return
     */
    List<CarInfo> getCarInfoByUserId(String userId);

    CarInfo getCarInfoById(String id);

    /**
     * 新增车的记录，记录中必须有user_id
     * @param carInfo
     * @return
     */
    boolean addCarInfo(CarInfo carInfo);
    /**
     * 根据记录的id删除记录
     * @param id
     * @return
     */
    boolean deleteCarInfoById(String id);

    boolean updateCarInfo(CarInfo carInfo);

    String getCarIdByCarNum(String carNum);

    CarInfo getCarChangeInfo(String carId);

    boolean addCarChangeInfo(CarInfo carInfo);

    CarInfo getDetailCarInfoByCarId(String carId);
}
