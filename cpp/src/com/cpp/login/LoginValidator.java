package com.cpp.login;


import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class LoginValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("NAME", "errorMsg", "请输入用户名或密码！");
		validateRequiredString("PASSWORD", "errorMsg", "请输入用户名或密码!");
	}
	
	
	protected void handleError(Controller controller) {
		controller.keepModel(User.class);
		String actionKey = getActionKey();
		if (actionKey.equals("/login/doLogin"))
			controller.render("login.jsp");
	}
}
