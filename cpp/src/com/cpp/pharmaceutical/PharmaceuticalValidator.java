package com.cpp.pharmaceutical;


import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * PharmaceuticalValidator.
 */
public class PharmaceuticalValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("blog.title", "titleMsg", "请输入Blog标题!");
		validateRequiredString("blog.content", "contentMsg", "请输入Blog内容!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(Pharmaceutical.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/blog/save"))
			controller.render("add.jsp");
		else if (actionKey.equals("/blog/update"))
			controller.render("edit.jsp");
	}
}
