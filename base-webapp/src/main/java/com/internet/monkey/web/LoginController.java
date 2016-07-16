package com.internet.monkey.web;

import com.internet.monkey.core.menu.service.MenuService;
import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.core.user.service.UserService;
import com.internet.monkey.util.HttpSessionUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by pzw on 2/8/2016.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private MenuService menuService;

    private org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String loginPost(User user, RedirectAttributes redirectAttributes,HttpServletRequest request) {
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            currentUser.login(token);
        } catch (AuthenticationException e) {
            redirectAttributes.addFlashAttribute("message", "loginPrompt");
            logger.info("error",e);
            return "redirect:/login";
        }
        if (currentUser.isAuthenticated()) {
            sessionHandle(user, request);
            return "redirect:" + getSavedUrl(request);
        } else {
            redirectAttributes.addFlashAttribute("message", "loginPrompt");
            return "redirect:/login";
        }
    }

    private String getSavedUrl(HttpServletRequest request) {
        SavedRequest savedRequest = WebUtils.getAndClearSavedRequest(request);
        if (savedRequest == null) {
            return "/";
        }
        String savedUrl = savedRequest.getRequestUrl().replaceFirst(request.getContextPath(), "");
        if (!savedUrl.contains("menuId")) {
            savedUrl = "/";
        }
        return savedUrl;
    }

    private void sessionHandle(User user, HttpServletRequest request) {
        User loginUser = userService.getUserByUsername(user.getUsername());
        HttpSessionUtil.saveUserToSession(loginUser, request);
        menuService.updateMenuInHttpSession(request);
    }

}
