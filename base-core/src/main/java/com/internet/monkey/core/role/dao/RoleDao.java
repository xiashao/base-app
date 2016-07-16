package com.internet.monkey.core.role.dao;

import com.internet.monkey.annotation.RepositoryImpl;
import com.internet.monkey.core.role.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by pzw on 2/10/2016.
 */
@RepositoryImpl
public interface RoleDao {

    List<Role> getAllRoleList();

    List<Role> getRoleListPage(Role role);

    Role getRoleById(String id);

    int addRole(Role role);

    int addRolePermission(Role role);

    int delRolePermissionByRoleId(String roleId);

    int delRoleById(String id);

    int updateRole(Role role);

}
