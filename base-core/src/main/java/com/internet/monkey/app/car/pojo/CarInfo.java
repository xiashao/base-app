package com.internet.monkey.app.car.pojo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
public class CarInfo {

    private String id;

    private String carName;

    private String carPhoto;

    private String carNumber;

    private String carNature;

    private String carBrand;

    private String carType;

    private String carMachineNo;

    private String bodyLevel;

    private String expendNumber;

    private String userId;

    private List<CarRefuelType> refuelType = new ArrayList<CarRefuelType>();

    private String stringRefuelType;
    //燃油量
    private String fuelAmount;
    //发动机性能
    private int enginePerformance;
    //变速器性能
    private int transmissionPerformance;
    //车灯状况
    private int lampStatus;

    public CarInfo() {
    }

    public CarInfo(String id, String fuelAmount, int enginePerformance, int transmissionPerformance, int lampStatus, String expendNumber) {
        this.id = id;
        this.fuelAmount = fuelAmount;
        this.enginePerformance = enginePerformance;
        this.transmissionPerformance = transmissionPerformance;
        this.lampStatus = lampStatus;
        this.expendNumber = expendNumber;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarPhoto() {
        return carPhoto;
    }

    public void setCarPhoto(String carPhoto) {
        this.carPhoto = carPhoto;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarNature() {
        return carNature;
    }

    public void setCarNature(String carNature) {
        this.carNature = carNature;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public String getBodyLevel() {
        return bodyLevel;
    }

    public void setBodyLevel(String bodyLevel) {
        this.bodyLevel = bodyLevel;
    }

    public String getCarMachineNo() {
        return carMachineNo;
    }

    public void setCarMachineNo(String carMachineNo) {
        this.carMachineNo = carMachineNo;
    }

    public String getExpendNumber() {
        return expendNumber;
    }

    public void setExpendNumber(String expendNumber) {
        this.expendNumber = expendNumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public List<CarRefuelType> getRefuelType() {
        return refuelType;
    }

    public String getStringRefuelType() {
        return stringRefuelType;
    }

    public void setStringRefuelType(String stringRefuelType) {
        this.stringRefuelType = stringRefuelType;
    }

    public String getFuelAmount() {
        return fuelAmount;
    }

    public void setFuelAmount(String fuelAmount) {
        this.fuelAmount = fuelAmount;
    }

    public int getEnginePerformance() {
        return enginePerformance;
    }

    public void setEnginePerformance(int enginePerformance) {
        this.enginePerformance = enginePerformance;
    }

    public int getTransmissionPerformance() {
        return transmissionPerformance;
    }

    public void setTransmissionPerformance(int transmissionPerformance) {
        this.transmissionPerformance = transmissionPerformance;
    }

    public int getLampStatus() {
        return lampStatus;
    }

    public void setLampStatus(int lampStatus) {
        this.lampStatus = lampStatus;
    }
}
