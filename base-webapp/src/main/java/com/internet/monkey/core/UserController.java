package com.internet.monkey.core;

import com.internet.monkey.ajax.AjaxResponseBody;
import com.internet.monkey.core.role.pojo.Role;
import com.internet.monkey.core.role.service.RoleService;
import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.core.user.service.UserService;
import com.internet.monkey.datatables.DataTablesPage;
import com.internet.monkey.datatables.DataTablesResponse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by pzw on 2/9/2016.
 */
@Controller
@RequestMapping("/b/user")
@Api(description = "用户controller")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;


    @RequestMapping(method = RequestMethod.GET)
    @RequiresPermissions("system:user:manage")
    public String user() {
        return "system/user";
    }


    @RequestMapping(value = "/getUserListPage", method = RequestMethod.POST)
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    @ApiOperation(value = "获取用户列表数据", notes = "根据查询条件获取用户数据", consumes = "application/x-www-form-urlencoded")
    public DataTablesResponse<User> getUserListPage(User user, DataTablesPage dataTablesPage) {
        return new DataTablesResponse<>(dataTablesPage,userService.getUserListPage(user,dataTablesPage));
    }

    @RequestMapping(value = "/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    public AjaxResponseBody deleteUser(@PathVariable String id) {
        return AjaxResponseBody.getOperateResultInstance(userService.delUserById(id));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    public AjaxResponseBody getUserById(@PathVariable String id) {
        AjaxResponseBody ajaxResponseBody = new AjaxResponseBody();
        User user = userService.getUserById(id);
        List<Role> roleList = roleService.getAllRoleList();
        ajaxResponseBody.addAttribute("user", user);
        ajaxResponseBody.addAttribute("roleList", roleList);
        return ajaxResponseBody;
    }

    @RequestMapping("/getRoleList")
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    public AjaxResponseBody getRoleList() {
        return new AjaxResponseBody().addAttribute("roleList", roleService.getAllRoleList());
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    public AjaxResponseBody addUser(@RequestBody User user) {
        return AjaxResponseBody.getOperateResultInstance(userService.addUser(user));
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    @RequiresPermissions("system:user:manage")
    public AjaxResponseBody updateUser(@RequestBody User user) {
        return AjaxResponseBody.getOperateResultInstance(userService.updateUser(user));
    }

}
