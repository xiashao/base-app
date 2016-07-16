package com.internet.monkey.car;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.ajax.ResponseStatus;
import com.internet.monkey.app.car.pojo.Order;
import com.internet.monkey.app.car.service.CarInfoService;
import com.internet.monkey.app.car.service.OrderService;
import com.internet.monkey.core.user.service.UserService;
import com.internet.monkey.page.Page;
import com.internet.monkey.util.FileUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RestController
@RequestMapping("/order/")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CarInfoService carInfoService;

    @Autowired
    private UserService userService;

    @Autowired
    private FileUploadService fileUploadService;

    @RequestMapping(value = "addOrder", method = RequestMethod.POST)
    public AjaxResponseBody addOrder(Order order, @RequestParam(value = "file", required = false)MultipartFile file, HttpServletRequest request) throws IOException {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        String carId = carInfoService.getCarIdByCarNum(order.getCarId());
        order.setCarId(carId);
        DateFormat format = new SimpleDateFormat("yyyyMMdd_HHmmss");
        order.setOrderCreatedTime(format.format(new Date()).toString());
        order.setUserId(userService.getUserByUsername(order.getUserId()).getId());
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.indexOf(".") + 1);
        String filePath = fileUploadService.upload(request,"order",suffix, file.getInputStream());
        order.setMarkPath(filePath);
        boolean b = orderService.addOrder(order);
        if (b) {
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "updateOrder", method = RequestMethod.POST)
    public AjaxResponseBody updateOrder(Order order) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        boolean b = orderService.updateOrder(order);
        if (b) {
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "updateOrderStatus", method = RequestMethod.POST)
    public AjaxResponseBody updateOrderStatus(String id, int status) {
        return AjaxResponseBody.getOperateResultInstance(orderService.updateOrderStatus(id, status));
    }

    @RequestMapping(value = "getOrderListPage", method = RequestMethod.POST)
    public AjaxResponseBody geyOrderListPage(Page page,Order order) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        List<Order> orderList = orderService.getOrderListPage(page,order);
        ajaxResponseBody.addAttribute("orderListPage", orderList);
        return ajaxResponseBody;
    }

    @RequestMapping(value = "getOrderById", method = RequestMethod.POST)
    public AjaxResponseBody getOrderById(String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        ajaxResponseBody.addAttribute("order",orderService.getOrderById(id));
        return ajaxResponseBody;
    }
}
