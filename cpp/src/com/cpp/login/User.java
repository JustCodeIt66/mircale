package com.cpp.login;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;


@SuppressWarnings("serial")
public class User extends Model<User> {
	public static final User me = new User();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<User> paginate(int pageNumber, int pageSize , String select ,String  sqlExceptSelect) {
		if(select.equals("")){
			select = "select * ";
		}
		if(sqlExceptSelect.equals("")){
			sqlExceptSelect = "from userInfo order by ID";
		}
		return paginate(pageNumber, pageSize, select, sqlExceptSelect , new Object[0]);
	}
	
	public List<User> findByNameAndPassword(Map<String,String[]> paras){
		List<User> result = new ArrayList<User>();
		result = User.me.find("select A.*,B.dwmch,B.shdz from userInfo A left join mchk B on A.DWBH =B.dwbh where name = ? and password = ?", paras.get("NAME")[0], paras.get("PASSWORD")[0]);
		return result;
	}
}
