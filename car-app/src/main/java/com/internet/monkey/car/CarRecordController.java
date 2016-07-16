package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.ajax.ResponseStatus;
import com.internet.monkey.app.car.pojo.CarInfo;
import com.internet.monkey.app.car.pojo.CarRecord;
import com.internet.monkey.app.car.service.CarRecordService;
import com.internet.monkey.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/carRecord/")
public class CarRecordController {

    @Autowired
    private CarRecordService carRecordService;


    @RequestMapping(value = "getCarRecordListPage", method = RequestMethod.POST)
    public AjaxResponseBody getCarRecordListPage(String carId, Page page) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        int pageNo = page.getPageNo();
        List<CarRecord> carRecordList = carRecordService.getCarRecordListPage(page, carId);
        if (pageNo > page.getPageNo()) {
            ajaxResponseBody.addAttribute("carRecordList", new ArrayList<>());
        } else {
            ajaxResponseBody.addAttribute("carRecordList", carRecordList);
        }
        return ajaxResponseBody;
    }

    @RequestMapping(value = "getCarRecordById", method = RequestMethod.POST)
    public AjaxResponseBody getCarRecordById(String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        CarRecord carRecord = carRecordService.getCarRecordById(id);
        ajaxResponseBody.addAttribute("carRecord", carRecord);
        return ajaxResponseBody;
    }

    @RequestMapping(value = "addCarRecord", method = RequestMethod.POST)
    public AjaxResponseBody addCardRecord(CarRecord carRecord) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        boolean b = carRecordService.addCarRecord(carRecord);
        if (b) {
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "update/lampStatus",method = RequestMethod.POST)
    public AjaxResponseBody updateLampStatus(CarInfo carInfo){
        return AjaxResponseBody.getOperateResultInstance(carRecordService.updateLampStatus(carInfo));
    }

    @RequestMapping(value = "update/enginePerformance",method = RequestMethod.POST)
    public AjaxResponseBody updateEnginePerformance(CarInfo carInfo){
        return AjaxResponseBody.getOperateResultInstance(carRecordService.updateEnginePerformance(carInfo));
    }

    @RequestMapping(value = "update/transmissionPerformance",method = RequestMethod.POST)
    public AjaxResponseBody updateTransmissionPerformance(CarInfo carInfo){
        return AjaxResponseBody.getOperateResultInstance(carRecordService.updateTransmissionPerformance(carInfo));
    }

    @RequestMapping(value = "update/fuelAmount",method = RequestMethod.POST)
    public AjaxResponseBody updateFuelAmount(CarInfo carInfo){
        return AjaxResponseBody.getOperateResultInstance(carRecordService.updateFuelAmount(carInfo));
    }

    @RequestMapping(value = "update/expendNumber",method = RequestMethod.POST)
    public AjaxResponseBody updateExpendNumber(CarInfo carInfo){
        return AjaxResponseBody.getOperateResultInstance(carRecordService.updateExpendNumber(carInfo));
    }
}
