package com.cpp.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cpp.common.MyInterceptor;
import com.cpp.common.Utility;
import com.cpp.login.User;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.ehcache.CacheKit;

/**
 * OrderController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(MyInterceptor.class)
public class OrderController extends Controller {
	private OrderSearch sqlPara = new OrderSearch();

	public void index() {
		String sqlCondition = " 1=1 and djlx = '212'";
        Map<String,String[]> paraMap = getParaMap();
        if(paraMap.size() == 0){
        	paraMap = new  HashMap<String,String[]>() ;
        }
            //根据当前登录用户查询单位编码
    		User loginUser = CacheKit.get("UserCachingFilter", "user");
    		   if (loginUser != null ) {
    		       setAttr("headerUserName", loginUser.get("NAME"));
    		}
            sqlCondition +=  " and A.dwbh like '%"+ loginUser.getStr("DWBH")+"%'";

            //添加查询条件
        	if(  null !=paraMap.get("ksrq")&& !"".equals( paraMap.get("ksrq")[0]) ){
        		sqlCondition += "and rq > '"+   paraMap.get("ksrq")[0]+"'";
        		setAttr("ksrq", paraMap.get("ksrq")[0]);
        	}
        	if(null !=paraMap.get("jsrq") && !"".equals( paraMap.get("jsrq")[0])){
        		sqlCondition += "and rq < '"+   paraMap.get("jsrq")[0]+"'";
        		setAttr("jsrq", paraMap.get("jsrq")[0]);
        	}
        	if(null !=paraMap.get("orderSearch.djbh") && !"".equals( paraMap.get("orderSearch.djbh")[0])){
        		setAttr("orderSearch.djbh", paraMap.get("orderSearch.djbh")[0]);
        	}
        	if( null!= paraMap.get("orderSearch.shenhe") && 0 !=paraMap.get("orderSearch.shenhe").length){
        		setAttr("orderSearch.shenhe", paraMap.get("orderSearch.shenhe")[0]);
        	}
        	if( null!= paraMap.get("orderSearch.is_zx") && 0 !=paraMap.get("orderSearch.is_zx").length){
        		setAttr("orderSearch.is_zx", paraMap.get("orderSearch.is_zx")[0]);
        	}

            String[] paraStr = Utility.makePara(sqlPara, "orderSearch", paraMap);
            sqlCondition += paraStr[0];
            setAttr("orderPage", Order.me.paginate(getParaToInt(0, 1), 20, "select A.*,B.dwmch", "from pf_djhz  A left join mchk B on A.dwbh = B.dwbh where" + sqlCondition + " order by djbh"));
            setAttr("searchCon", paraStr[1]);

    	render("order.jsp");
	}
	
	public void add() {
	}
	
	@Before(OrderValidator.class)
	public void save() {
		getModel(Order.class).save();
		redirect("/order");
	}
	
	public void edit() {
		setAttr("order", Order.me.findById(getParaToInt()));
	}
	
	@Before(OrderValidator.class)
	public void update() {
		getModel(Order.class).update();
		redirect("/order");
	}
	
	public void delete() {
		Db.update("delete from pf_djmx where djbh= ?",getPara());
		Order.me.deleteById(getPara());
		redirect("/order");
	}
	
	public void queryOrder() {
        List<Order> list =Order.me.find("select * from pf_djhz");
        Map<String,String> result = new HashMap<String,String>();
        result.put("draw", "1");
        result.put("recordsTotal", String.valueOf(list.size()));
        result.put("recordsFiltered", String.valueOf(list.size()));
        result.put("data", JsonKit.toJson(list));
        
        System.out.println(JsonKit.toJson(result));
        renderHtml(JsonKit.toJson(result));
	}
	
	
}


