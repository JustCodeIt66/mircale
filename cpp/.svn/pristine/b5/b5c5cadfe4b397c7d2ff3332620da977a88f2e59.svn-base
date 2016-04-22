package com.cpp.common;

import java.util.ArrayList;
import java.util.List;

import com.cpp.order.Order;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * @author Administrator
 *
 */
public final  class DaoUtility {

	//获取新订单ID
	public static String MakeNewOrderID() {
		return Order.me.makeNewOrderID();
    }
	
	//获取fs方式
	public static  List<String> getfkfs(){
		List<Record> tmp =  Db.find("select fkfs from pf_djhz group by fkfs");
		List<String> rsp = new ArrayList<String>();
		for(Record tmpRecord:tmp){
			if(null != tmpRecord.getStr("fkfs") && !"".equals(tmpRecord.getStr("fkfs").trim()) )
			rsp.add(tmpRecord.getStr("fkfs"));
		}
		return rsp;
	}
	
	//获取提货方式
	public static  List<String> getthfs(){
		List<Record> tmp =  Db.find("select thfs from pf_djhz group by thfs");
		List<String> rsp = new ArrayList<String>();
		for(Record tmpRecord:tmp){
			if(null != tmpRecord.getStr("thfs") && !"".equals(tmpRecord.getStr("thfs").trim()))
			rsp.add(tmpRecord.getStr("thfs"));
		}
		return rsp;
	}
	
	//获取应收应付
	public static  List<String> getysyf(){
		List<Record> tmp =  Db.find("select use_ysyf from pf_djhz group by use_ysyf");
		List<String> rsp = new ArrayList<String>();
		for(Record tmpRecord:tmp){
			if(null != tmpRecord.getStr("use_ysyf") && !"".equals(tmpRecord.getStr("use_ysyf").trim()))
			rsp.add(tmpRecord.getStr("use_ysyf"));
		}
		return rsp;
	}
	
	
	
	//查询单位信息
//	public static  Record getDWInfo(String dwbh){
//		List<Record> tmp =  Db.find("select * from mchk where dwbh=?",dwbh); 
//		if(null != tmp && tmp.size()>0){
//			return tmp.get(0);
//		}
//		return null;
//	}
}
