package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.OrderDao;
import com.internet.monkey.app.car.pojo.Order;
import com.internet.monkey.page.Page;
import com.internet.monkey.page.PageInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    public List<Order> getOrderListPage(Page page, Order order) {
        PageInterceptor.startPage(page);
        if(order.getStatus()==-1){
            return orderDao.getOrderListPageAll(order);
        }
        return orderDao.getOrderListPageByStatus(order);
    }

    public boolean addOrder(Order order) {
        return orderDao.addOrder(order);
    }

    public boolean updateOrder(Order order) {
        return orderDao.updateOrder(order);
    }

    public Order getOrderById(String id) {
        return orderDao.getOrderById(id);
    }

    public boolean updateOrderStatus(String id, int status) {
        return orderDao.updateOrderStatus(id, status);
    }

}
