package com.cpp.order;

import java.util.List;

import com.cpp.common.MyInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;

/**
 * OrderController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(MyInterceptor.class)
public class OrderDetailController extends Controller {

	public void index() {
		String djbh = getPara(0);
		Page<Record> page = Db.paginate(1, 100, "select * ", "from pf_djhz A ,pf_djmx  B , spkfk C where  A.djbh = B.djbh and  B.spid= C.spid and A.djbh = '"+djbh+"' order by A.djbh" );
		List<Record> mainOrder = Db.find("select A.*,B.dwmch from pf_djhz A  left join mchk B on A.dwbh = B.dwbh          where djbh =? " , djbh);
		setAttr("mainOrder",mainOrder.get(0));
		 setAttr("orderDetailPage",page);
	     render("orderDetails.jsp");
	}
	
	
}

