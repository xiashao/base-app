package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.app.car.pojo.CarBodyLevel;
import com.internet.monkey.app.car.service.CarBodyLevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2016/5/27.
 */
@RestController
@RequestMapping("/bodyLevel/")
public class CarBodyLevelController {
    @Autowired
    private CarBodyLevelService carBodyLevelService;

    @RequestMapping(value = "/getAllCarBodyLevel",method = RequestMethod.POST)
    public AjaxResponseBody getAllCarBodyLevel(){
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        List<CarBodyLevel> carBodyLevels = carBodyLevelService.getAllCarBodyLevel();
        ajaxResponseBody.addAttribute("allCarBodyLevel",carBodyLevels);
        return ajaxResponseBody;
    }

}
