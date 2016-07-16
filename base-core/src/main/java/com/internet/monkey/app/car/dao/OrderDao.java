package com.internet.monkey.app.car.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.app.car.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@RepositoryImpl
public interface OrderDao {

    boolean addOrder(Order order);

    boolean updateOrder(Order order);

    Order getOrderById(String id);

    List<Order> getOrderListPageByStatus(Order order);

    List<Order> getOrderListPageAll(Order order);

    boolean updateOrderStatus(@Param("id") String id,@Param("status") int status);

}
