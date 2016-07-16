package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.ajax.ResponseStatus;
import com.internet.monkey.app.car.pojo.CarInfo;
import com.internet.monkey.app.car.pojo.CarType;
import com.internet.monkey.app.car.pojo.RefuelType;
import com.internet.monkey.app.car.service.BrandService;
import com.internet.monkey.app.car.service.CarBodyLevelService;
import com.internet.monkey.app.car.service.CarInfoService;
import com.internet.monkey.app.car.service.CarTypeService;
import com.internet.monkey.core.user.service.UserService;
import com.internet.monkey.util.FileUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/carInfo/")
public class CarInfoController {

    @Autowired
    private CarInfoService carInfoService;



    @Autowired
    private FileUploadService fileUploadService;


    @RequestMapping(value = "getCarListByUserId", method = RequestMethod.POST)
    public AjaxResponseBody getCarListByUserId(String userId) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        List<CarInfo> carInfoList = carInfoService.getCarInfoByUserId(userId);
        ajaxResponseBody.addAttribute("carInfoList", carInfoList);
        return ajaxResponseBody;
    }

    @RequestMapping(value = "deleteCar", method = RequestMethod.POST)
    public AjaxResponseBody deleteCar(String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        boolean b = carInfoService.deleteCarInfo(id);
        if (b) {
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "updateCar", method = RequestMethod.POST)
    public AjaxResponseBody updateCar(CarInfo carInfo) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        boolean b = carInfoService.updateCarInfo(carInfo);
        if (b) {
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "getCarInfoById", method = RequestMethod.POST)
    public AjaxResponseBody getCarInfoById(String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        CarInfo carInfo = carInfoService.getCarInfoById(id);
        ajaxResponseBody.addAttribute("carInfo", carInfo);
        return ajaxResponseBody;
    }

    @RequestMapping(value = "addCarInfo", method = RequestMethod.POST)
    public AjaxResponseBody addCarInfo(CarInfo carInfo, @RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request) throws IOException {
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.indexOf(".") + 1);
        String filePath = fileUploadService.upload(request, "car", suffix, file.getInputStream());
        carInfo.setCarPhoto(filePath);
        return AjaxResponseBody.getOperateResultInstance(carInfoService.addCarInfo(carInfo));
    }

    @RequestMapping(value = "getCarChangeInfo",method = RequestMethod.POST)
    public AjaxResponseBody getCarChangeInfo(String carId){
        AjaxResponseBody responseBody = new AjaxResponseBody();
        CarInfo carInfo = carInfoService.getCarChangeInfo(carId);
        responseBody.addAttribute("carChangeInfo",carInfo);
        return responseBody;
    }

    @RequestMapping(value = "getDetailCarInfo",method = RequestMethod.POST)
    public AjaxResponseBody getDetailCarInfo(String carId){
        AjaxResponseBody responseBody = new AjaxResponseBody();
        CarInfo carInfo = carInfoService.getDetailCarInfoByCarId(carId);
        responseBody.addAttribute("detailCarInfo",carInfo);
        return responseBody;
    }

}
