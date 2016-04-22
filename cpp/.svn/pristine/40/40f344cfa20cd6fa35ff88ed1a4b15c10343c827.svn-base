package com.cpp.pharmaceutical;

import java.util.Map;

import com.cpp.common.MyInterceptor;
import com.cpp.common.Utility;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * BlogController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(MyInterceptor.class)
public class PharmaceuticalController extends Controller {
	private PharmaceuticalSearch sqlPara = new PharmaceuticalSearch();

	public void index() {
		String sqlCondition = " 1=1 and spmch not like '%待填%' and spmch not like '%淘汰%' and beactive ='是' ";
        Map<String,String[]> paraMap = getParaMap();
        if(paraMap.size() == 0){
            setAttr("pharmaceuticalPage", Pharmaceutical.me.paginate(getParaToInt(0, 1), 20,"",""));
        }else{
            String[] paraStr = Utility.makePara(sqlPara, "pharmaceuticalSearch", paraMap);
            sqlCondition += paraStr[0];
            setAttr("pharmaceuticalPage", Pharmaceutical.me.paginate(getParaToInt(0, 1), 20, "select *", "from spkfk where" + sqlCondition + " order by spbh"));
            setAttr("searchCon", paraStr[1]);
        }
    	render("pharmaceutical.jsp");

	}
}


