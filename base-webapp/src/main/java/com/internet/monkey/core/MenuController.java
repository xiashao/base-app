package com.internet.monkey.core;

import com.internet.monkey.core.menu.pojo.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by pzw on 2/8/2016.
 */
@Controller
@RequestMapping("/develop/menu")
public class MenuController {

    @RequestMapping("/sidebar")
    public String showSidebar() {
        return "menu/menu";
    }

    @RequestMapping("/current")
    public String getCurrent(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String, Menu> menuMap = (HashMap) request.getServletContext().getAttribute("menuMap");
        Menu menu = menuMap.get(request.getParameter("id"));
        int level = menu.getLevel();
        request.getSession().setAttribute("menu",menu);
        String current = "<li><span><i class='" + menu.getIcon() + "'></i>" + menu.getMenuName() + "<span></li>";
        for (int i = 0; i < level; i++) {
            menu = menuMap.get(String.valueOf(menu.getParentId()));
            current = "<li><span><i class='" + menu.getIcon() + "'></i> " + menu.getMenuName()
                    + "</span><i class='fa fa-angle-right'></i>" + current;
        }
        response.getWriter().write(current);
        return null;
    }

}
