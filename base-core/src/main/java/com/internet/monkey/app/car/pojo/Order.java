package com.internet.monkey.app.car.pojo;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
public class Order {
    private String id;
    private String orderNum;
    private String orderCreatedTime;
    private String orderTime;
    private String gasType;
    private String amount;
    private String gasQuatity;
    private String latx;
    private String laty;
    private String carId;
    private String userId;
    private String address;
    private String fuelName;
    private String markPath;
    private int status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderCreatedTime() {
        return orderCreatedTime;
    }

    public void setOrderCreatedTime(String orderCreatedTime) {
        this.orderCreatedTime = orderCreatedTime;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getGasType() {
        return gasType;
    }

    public void setGasType(String gasType) {
        this.gasType = gasType;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getGasQuatity() {
        return gasQuatity;
    }

    public void setGasQuatity(String gasQuatity) {
        this.gasQuatity = gasQuatity;
    }

    public String getLatx() {
        return latx;
    }

    public void setLatx(String latx) {
        this.latx = latx;
    }

    public String getLaty() {
        return laty;
    }

    public void setLaty(String laty) {
        this.laty = laty;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFuelName() {
        return fuelName;
    }

    public void setFuelName(String fuelName) {
        this.fuelName = fuelName;
    }

    public String getMarkPath() {
        return markPath;
    }

    public void setMarkPath(String markPath) {
        this.markPath = markPath;
    }
}
