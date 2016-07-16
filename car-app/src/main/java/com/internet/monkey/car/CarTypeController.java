package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.app.car.service.CarTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/carType/")
public class CarTypeController {

    @Autowired
    private CarTypeService carTypeService;


    @RequestMapping(value = "getCarTypeList/{carTypeId}", method = RequestMethod.POST)
    public AjaxResponseBody getCarTypeList(@PathVariable String carTypeId) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        ajaxResponseBody.addAttribute("carTypeList", carTypeService.getCarTypeList(carTypeId));
        return ajaxResponseBody;
    }

}
