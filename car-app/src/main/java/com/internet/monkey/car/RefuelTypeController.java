package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.app.car.pojo.RefuelType;
import com.internet.monkey.app.car.service.RefuelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2016/5/26.
 */
@RestController
@RequestMapping("/refuelType/")
public class RefuelTypeController {
    @Autowired
    private RefuelService refuelService;

    @RequestMapping(value = "getAllRefuelType",method = RequestMethod.POST)
    public AjaxResponseBody getAllRefuelType(){
        AjaxResponseBody responseBody = new AjaxResponseBody();
        List<RefuelType> AllRefuelType = refuelService.getAllRefuelType();
        responseBody.addAttribute("refuelTypeList",AllRefuelType);
        return responseBody;
    }
}
