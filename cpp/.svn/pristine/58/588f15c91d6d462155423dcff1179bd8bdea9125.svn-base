package com.cpp.pharmaceutical;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;

public class OtherPharmaceuticalController extends Controller{
	public void  queryPharmaceutical() {
		String sqlCondition = " 1=1 and spmch not like '%待填%' and spmch not like '%淘汰%' ";
        String spbh = getPara("Search_spbh");
        String spmch =  getPara("Search_spmch");
        if( null!=spbh && !spbh.isEmpty() && !spbh.equals("")){
        	sqlCondition = sqlCondition+ " and  spbh like " +"'%" +spbh +"%'"; 
        }
        if( null!=spmch &&  !spmch.isEmpty() && !spmch.equals("")){
        	sqlCondition = sqlCondition+ "and  spmch like " +"'%" +spmch +"%'"; 
        }
        List<Pharmaceutical>  list = new ArrayList<Pharmaceutical>();
        if(null ==spbh &&  null==spmch ){
   	      
        }else{
            list =   Pharmaceutical.me.find( "select * ",sqlCondition);   
        }
        renderHtml(JsonKit.toJson(list));
	}
}
