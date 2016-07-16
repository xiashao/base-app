package com.internet.monkey.app.car.service;

import com.internet.monkey.app.car.dao.BrandDao;
import com.internet.monkey.app.car.pojo.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by panzhuowen on 2016/4/4 001.
 */
@Service
public class BrandService {

    @Autowired
    private BrandDao brandDao;

    public List<Brand> getBrandList(){
        return brandDao.getBrandList();
    }

    public Brand getBrandByName(String name) {
        return brandDao.getBrandByName(name);
    }
}
