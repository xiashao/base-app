package com.internet.monkey.core.user.service;

import com.internet.monkey.constant.Constant;
import com.internet.monkey.core.user.dao.UserDao;
import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.page.Page;
import com.internet.monkey.page.PageInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pzw on 2/2/2016.
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public List<User> getUserListPage(User user, Page page) {
        PageInterceptor.startPage(page);
        return userDao.getUserListPage(user);
    }

    public User getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    public List<String> getUserPermTokenByUsername(String username) {
        return userDao.getPermTokenByUsername(username);
    }

    public boolean delUserById(String id) {
        int a = userDao.delUserById(id);
        int b = userDao.delUserRoleByUserId(id);
        return a + b > Constant.FUNCTION_RETURN;
    }

    public User getUserById(String id) {
        return userDao.getUserById(id);
    }

    public boolean addUser(User user) {
        int a = userDao.addUser(user);
        int b = userDao.addUserRole(user);
        return a + b > Constant.FUNCTION_RETURN;
    }

    public boolean updateUser(User user) {
        int a = userDao.updateUser(user);
        int b = userDao.updateUserRole(user);
        return a + b > Constant.FUNCTION_RETURN;
    }

    public boolean updatePassword(User user) {
        return userDao.updatePassword(user);
    }

    public boolean updateNickName(User user) {return userDao.updateNickName(user);}

    public boolean updateUserName(User user) {return userDao.updateUserName(user);}

    public boolean updateSex(User user){return userDao.updateSex(user);}
}
