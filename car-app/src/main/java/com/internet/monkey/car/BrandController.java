package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.app.car.pojo.Brand;
import com.internet.monkey.app.car.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/brand/")
public class BrandController {

    @Autowired
    private BrandService brandService;


    @RequestMapping(value = "getBrandList", method = RequestMethod.POST)
    public AjaxResponseBody getBrandList() {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        List<Brand> brandList = brandService.getBrandList();
        ajaxResponseBody.addAttribute("brandList", brandList);
        return ajaxResponseBody;
    }

}
