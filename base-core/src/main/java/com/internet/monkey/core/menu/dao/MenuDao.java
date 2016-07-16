package com.internet.monkey.core.menu.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.core.menu.pojo.Menu;

import java.util.List;

/**
 * Created by pzw on 2/8/2016.
 */
@RepositoryImpl
public interface MenuDao {

    List<Menu> getAllMenu();

    List<Menu> getMenuListByLevel(Integer level);

    List<Menu> getPermissionTree();
}
