package com.internet.monkey.login;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.ajax.ResponseStatus;
import com.internet.monkey.core.role.pojo.Role;
import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.core.user.service.UserService;
import com.internet.monkey.util.FileUploadService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by panzhuowen on 2016/3/26 001.
 */
@RestController
@RequestMapping("/")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private FileUploadService fileUploadService;

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public AjaxResponseBody login(User user){
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            currentUser.login(token);
        } catch (AuthenticationException e) {
            ajaxResponseBody.setReturnMsg("用户名或密码错误");
            ajaxResponseBody.setResponseStatus(ResponseStatus.ERROR);
            return ajaxResponseBody;
        }
        if (currentUser.isAuthenticated()) {
            User loginUser = userService.getUserByUsername(user.getUsername());
            ajaxResponseBody.addAttribute("user", loginUser);
            ajaxResponseBody.setResponseStatus(ResponseStatus.SUCCESS);
            return ajaxResponseBody;
        } else {
            ajaxResponseBody.setReturnMsg("用户名或密码错误");
            return ajaxResponseBody;
        }
    }

    @RequestMapping(value = "forgetPassword", method = RequestMethod.POST)
    public AjaxResponseBody forgetPassword(User user) {
        return AjaxResponseBody.getOperateResultInstance(userService.updatePassword(user));
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public AjaxResponseBody register(User user,@RequestParam(value = "file", required = false)MultipartFile file, HttpServletRequest request) throws IOException {
        Role role = new Role();
        role.setId("2");
        user.setRole(role);
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.indexOf(".") + 1);
        String filePath = fileUploadService.upload(request,"avatar",suffix, file.getInputStream());
        user.setUserAvatar(filePath);
        return AjaxResponseBody.getOperateResultInstance(userService.addUser(user));
    }

    @RequestMapping(value = "updateNickName",method = RequestMethod.POST)
    public AjaxResponseBody updateNickName(User user){
        return AjaxResponseBody.getOperateResultInstance(userService.updateNickName(user));
    }

    @RequestMapping(value = "updatePassword",method = RequestMethod.POST)
    public AjaxResponseBody updatePassword(User user){
        return AjaxResponseBody.getOperateResultInstance(userService.updatePassword(user));
    }

    @RequestMapping(value = "updateUserName",method = RequestMethod.POST)
    public AjaxResponseBody updateUserName(User user){
        return AjaxResponseBody.getOperateResultInstance(userService.updateUserName(user));
    }

    @RequestMapping(value = "updateSex",method = RequestMethod.POST)
    public AjaxResponseBody updateSex(User user){
        return AjaxResponseBody.getOperateResultInstance(userService.updateSex(user));
    }

    @RequestMapping(value = {"getUserByUserName"},method = RequestMethod.POST)
    public AjaxResponseBody getUserByUserName(String userName){
        AjaxResponseBody responseBody;
        System.out.println(userService.getUserByUsername(userName));
        if (userService.getUserByUsername(userName)!=null){
            responseBody = new AjaxResponseBody(ResponseStatus.ERROR,"该手机号,已注册");
            return responseBody;
        }
        return AjaxResponseBody.getOperateResultInstance(true);
    }
}
