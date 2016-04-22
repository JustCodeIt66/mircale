package com.cpp.zhuangchedan;

import java.util.ArrayList;
import java.util.List;

import com.cpp.common.MyInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
/**
 * 
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(MyInterceptor.class)
public class ZhuangchedanController extends Controller {

	public void  index() {
        String djbh = getPara();
       List<Record>  list = new ArrayList<Record>();
       list =   Db.find( "select * from Tms_zhchdmx A left join Tms_zhchdhz B on A.Djbh =B.Djbh where A.Xgdjbh =?",djbh);   
   //    renderHtml(JsonKit.toJson(list));
       if(null !=list && !list.isEmpty()){
    	   setAttr("zhuangchedan",list.get(0));
       }
       render("zhuangchedan.jsp");
	}
}

