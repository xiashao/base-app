package com.internet.monkey.core.user.service;

import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.page.Page;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by pzw on 2/2/2016.
 */
@ContextConfiguration(locations = "/applicationContext-test.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void testGetUserListPage() throws Exception {
        userService.getUserListPage(new User(),new Page());
    }

    @Test
    public void testGetUserByUsername() throws Exception {
        System.out.println(userService.getUserByUsername("admin").getRole().getRoleName());
    }
}