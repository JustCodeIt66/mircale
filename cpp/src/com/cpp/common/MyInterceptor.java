package com.cpp.common;

import java.util.HashSet;
import java.util.Set;

import com.cpp.login.User;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.plugin.ehcache.CacheKit;

public class MyInterceptor implements Interceptor {
   //   private HttpServletRequest request;
	  private static final Set<String> excludedActionKeys = new HashSet<String>();
	  public static void addExcludedActionKey(String actionKey) {
	   excludedActionKeys.add(actionKey);
	  }
	 
	  public void intercept(Invocation ai) {
		Controller controller = ai.getController();
		User loginUser = CacheKit.get("UserCachingFilter", "user");
	   if (loginUser != null ) {
		   controller.setAttr("hearUserName", loginUser.get("NAME"));
		   ai.invoke();    
	   }
	   else {
		   controller.redirect("/login");
	   }     
	  }
}