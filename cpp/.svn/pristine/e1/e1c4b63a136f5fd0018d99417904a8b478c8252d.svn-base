package com.cpp.order;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;


@SuppressWarnings("serial")
public class Order extends Model<Order> {
	public static final Order me = new Order();
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<Order> paginate(int pageNumber, int pageSize , String select ,String  sqlExceptSelect) {
		if(select.equals("")){
			select = "select * ";
		}
		if(sqlExceptSelect.equals("")){
			sqlExceptSelect = "from pf_djhz order by djbh";
		}
		return paginate(pageNumber, pageSize, select, sqlExceptSelect , new Object[0]);
	}
	
	
	public String makeNewOrderID() {
		String id = "";
		Order order = findFirst("select top 1 * from pf_djhz where djbh like '%XSG%' order by djbh desc  ");
		String last_id = order.get("djbh");
		String[]  tmpArrays = last_id.split("XSGZDA");
		int len = tmpArrays[1].length();//取得字符串的长度
		int index = 0;//预定义第一个非零字符串的位置
		char strs[] =  tmpArrays[1].toCharArray();// 将字符串转化成字符数组
		for(int i=0; i<len; i++){
			if('0'!=strs[i]){
				index=i;// 找到非零字符串并跳出
				break;
			}
		}
		String strLast =  tmpArrays[1].substring(index, len).trim();// 截取字符串
		int j =  Integer.parseInt(strLast)+1;
		String str = String.format("%08d", j);  
		id = "XSGZDA" + str;
		return id;
	}
}
