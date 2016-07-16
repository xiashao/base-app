package com.internet.monkey.core.role.pojo;

import com.internet.monkey.core.permission.pojo.Permission;
import com.internet.monkey.core.user.pojo.User;

import java.util.List;

/**
 * Created by pzw on 2/8/2016.
 */
public class Role {
    private String id;
    private String roleName;
    private String roleDescription;
    private List<User> users;
    private List<Permission> permissions;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
    }
}
