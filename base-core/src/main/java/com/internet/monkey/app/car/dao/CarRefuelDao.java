package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.CarRefuelType;
import com.internet.monkey.app.car.pojo.RefuelType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by panzhuowen on 2016/5/7 001.
 */
@RepositoryImpl
public interface CarRefuelDao {

    List<CarRefuelType> getRefuelByCar(String carId);

    boolean addCarRefuelType(@Param("carId") String carId,@Param("refuelType") String refuelType);

    List<RefuelType> getAllRefuelType();
}
