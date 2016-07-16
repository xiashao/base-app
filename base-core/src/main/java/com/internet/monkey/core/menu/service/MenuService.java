package com.internet.monkey.core.menu.service;

import com.internet.monkey.core.menu.dao.MenuDao;
import com.internet.monkey.core.menu.pojo.Menu;
import com.internet.monkey.util.StringUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.ServletContextAware;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by pzw on 2/8/2016.
 */
@Service
public class MenuService implements ServletContextAware{

    private ServletContext servletContext;

    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    @Autowired
    private MenuDao menuDao;

    @PostConstruct
    public void initMenuContext() {
        if (servletContext != null) {
            List<Menu> menuList = menuDao.getAllMenu();
            Map<String, Menu> menuMap = new HashMap<>();
            for (Menu menu : menuList) {
                menuMap.put(String.valueOf(menu.getId()), menu);
            }
            servletContext.setAttribute("menuMap", menuMap);
        }
    }

    public void updateMenuInHttpSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<Menu> level0List = new ArrayList<>();
        Subject currentUser = SecurityUtils.getSubject();
        menuDao.getMenuListByLevel(0).stream().filter(menu -> StringUtil.isEmpty(menu.getPermission().getPermToken())
                || currentUser.isPermitted(menu.getPermission().getPermToken())).forEach(menu -> {
            level0List.add(menuUrlHandle(menu));
        });

        List<Menu> level1List = menuDao.getMenuListByLevel(1);
        Map<String, List<Menu>> level1Map = groupMenuList(level1List);

        List<Menu> level2List = menuDao.getMenuListByLevel(2);
        Map<String, List<Menu>> level2Map = groupMenuList(level2List);

        session.setAttribute("level0List", level0List);
        session.setAttribute("level1Map", level1Map);
        session.setAttribute("level2Map", level2Map);
    }

    private Map<String, List<Menu>> groupMenuList(List<Menu> menuList) {
        Subject currentUser = SecurityUtils.getSubject();
        Map<String, List<Menu>> map = new HashMap<>();
        for (Menu menu : menuList) {
            if (!map.containsKey(menu.getParentId())) {
                map.put(menu.getParentId(), new ArrayList<>());
            }
            if ("".equals(menu.getPermission().getPermToken()) || currentUser.isPermitted(menu.getPermission().getPermToken())) {
                map.get(menu.getParentId()).add(menuUrlHandle(menu));
            }
        }
        return map;
    }

    private Menu menuUrlHandle(Menu menu) {
        String url = menu.getUrl();
        menu.setUrl(url + (url.contains("?") ? "&" : "?") + "menuId=" + menu.getId());
        return menu;
    }

    public List<Menu> getMenuList() {
        return menuDao.getPermissionTree();
    }

}
