package com.cpp.pharmaceutical;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

/**
 * Blog model.

将表结构放在此，消除记忆负担
mysql> desc blog;
+---------+--------------+------+-----+---------+----------------+
| Field   | Type         | Null | Key | Default | Extra          |
+---------+--------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| title   | varchar(200) | NO   |     | NULL    |                |
| content | mediumtext   | NO   |     | NULL    |                |
+---------+--------------+------+-----+---------+----------------+

数据库字段名建议使用驼峰命名规则，便于与 java 代码保持一致，如字段名： userId
 */
@SuppressWarnings("serial")
public class Pharmaceutical extends Model<Pharmaceutical> {
	public static final Pharmaceutical me = new Pharmaceutical();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<Pharmaceutical> paginate(int pageNumber, int pageSize , String select ,String  sqlExceptSelect) {
		if(select.equals("")){
			select = "select * ";
		}
		if(sqlExceptSelect.equals("")){
			sqlExceptSelect = "from spkfk where 1=1 and spmch not like '%待填%' and spmch not like '%淘汰%' and beactive ='是' order by spbh";
		}
		return paginate(pageNumber, pageSize, select, sqlExceptSelect , new Object[0]);
	}
	
	
	public List<Pharmaceutical> find(String select ,String  sqlCondition) {
		return    find("select * from spkfk   where" + sqlCondition + " order by spbh");
	}
}
