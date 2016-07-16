package com.internet.monkey.core.user.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.core.user.pojo.User;

import java.util.List;

/**
 * Created by pzw on 2/2/2016.
 */
@RepositoryImpl
public interface UserDao {

    List<User> getUserListPage(User user);

    User getUserByUsername(String username);

    List<String> getPermTokenByUsername(String username);

    int delUserById(String id);

    User getUserById(String id);

    int delUserRoleByUserId(String userId);

    int addUser(User user);

    int addUserRole(User user);

    int updateUser(User user);

    int updateUserRole(User user);

    boolean updatePassword(User user);

    boolean updateNickName(User user);

    boolean updateSex(User user);

    boolean updateUserName(User user);

    String checkUserName(String userName);
}
