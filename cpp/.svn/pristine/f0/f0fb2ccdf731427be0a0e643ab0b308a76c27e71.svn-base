package com.cpp.login;
import java.util.List;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.ehcache.CacheKit;

/**
 * BlogController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */

public class LoginController extends Controller {

	public void index() {
        Map<String,String[]> paraMap = getParaMap();
    	render("login.jsp");
	}
	
	@Before(LoginValidator.class)
	public void doLogin() {
        Map<String,String[]> paraMap = getParaMap();
        List<User> userList =  User.me.findByNameAndPassword(paraMap);
        if(userList.size() != 0){
        	CacheKit.put("UserCachingFilter", "user", userList.get(0));
 
        	redirect("/index");
        }
        else{
            setAttr("errorMsg","用户名或密码错误！");
        	render("login.jsp");
        }

	}
}


