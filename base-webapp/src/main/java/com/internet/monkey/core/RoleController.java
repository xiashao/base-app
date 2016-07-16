package com.internet.monkey.core;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.core.menu.pojo.Menu;
import com.internet.monkey.core.menu.service.MenuService;
import com.internet.monkey.core.role.pojo.Role;
import com.internet.monkey.core.role.service.RoleService;
import com.internet.monkey.datatables.DataTablesPage;
import com.internet.monkey.datatables.DataTablesResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by panzh on 2016/2/20.
 */
@Controller
@RequestMapping("/b/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;

    @RequestMapping(method = RequestMethod.GET)
    public String role() {
        return "system/role";
    }

    @RequestMapping("/getRoleListPage")
    @ResponseBody
    public DataTablesResponse<Role> getRoleListPage(Role role, DataTablesPage dataTablesPage) {
        return new DataTablesResponse<>(dataTablesPage,roleService.getRoleListPage(dataTablesPage,role));
    }

    @RequestMapping("/getPermissionTree")
    @ResponseBody
    public List<Menu> getPermissionTree() {
        return menuService.getMenuList();
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public AjaxResponseBody addRole(@RequestBody  Role role) {
        return AjaxResponseBody.getOperateResultInstance(roleService.addRole(role));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public AjaxResponseBody delRole(@PathVariable String id) {
        return AjaxResponseBody.getOperateResultInstance(roleService.delRoleById(id));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public AjaxResponseBody getRoleById(@PathVariable String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        Role role = roleService.getRoleById(id);
        List<Menu> permissionTree = menuService.getMenuList();
        ajaxResponseBody.addAttribute("role",role);
        ajaxResponseBody.addAttribute("permissionTree", permissionTree);
        return ajaxResponseBody;
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public AjaxResponseBody updateRole(@RequestBody Role role) {
        return AjaxResponseBody.getOperateResultInstance(roleService.updateRole(role));
    }

}
