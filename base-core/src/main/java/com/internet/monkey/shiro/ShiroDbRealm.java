package com.internet.monkey.shiro;

import com.internet.monkey.core.role.pojo.Role;
import com.internet.monkey.core.user.pojo.User;
import com.internet.monkey.core.user.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by pzw on 2/8/2016.
 */
public class ShiroDbRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String) getAvailablePrincipal(principalCollection);
        if (username != null) {
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            Role role = userService.getUserByUsername(username).getRole();
            if (role != null) {
                info.addRole(role.getRoleName());
            }
            List<String> permTokens = userService.getUserPermTokenByUsername(username);
            if (permTokens != null) {
                info.addStringPermissions(permTokens);
            }
            return info;
        }
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        if (username != null && !"".equals(username)) {
            User user = userService.getUserByUsername(username);
            if (user != null) {
                return new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), getName());
            }
        }
        return null;
    }
}
