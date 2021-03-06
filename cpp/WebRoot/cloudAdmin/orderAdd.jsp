<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>集中采购平台 | 药品管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="${baseUrl}/js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="${baseUrl}/css/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="${baseUrl}/css/themes/default.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="${baseUrl}/css/responsive.css" >

	<link href="${baseUrl}/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- TABLE CLOTH -->
	<link rel="stylesheet" type="text/css" href="${baseUrl}/js/tablecloth/css/tablecloth.min.css" />

	<!-- FONTS -->
	<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- HEADER -->
	 <%@ include file="header.jsp"%>	
	<!--/HEADER -->
	
	<!-- PAGE -->
	<section id="page">
			<!-- SIDEBAR -->
			<%@ include file="sidebar.jsp"%>		
			<!-- /SIDEBAR -->
		<div id="main-content">

			<!-- /SAMPLE BOX CONFIGURATION MODAL FORM-->
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
									<!-- BREADCRUMBS -->
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="${baseUrl}/ ">主页</a>
										</li>
										<li>
											<a href="#">订单管理</a>
										</li>
										<li>订单新增</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">新订单</h3>
									</div>
									<div class="description">from 博锐药业</div>
								</div>
						</div>
						<!-- /PAGE HEADER -->
                        <div class="separator"></div>
						<!-- /BORDERED HOVER -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border inverse">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>  订单详细</h4>
										<div class="tools">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i>
											</a>
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
											<a href="javascript:;" class="collapse">
												<i class="fa fa-chevron-up"></i>
											</a>
											<a href="javascript:;" class="remove">
												<i class="fa fa-times"></i>
											</a>
										</div>
									</div>
								 <form class="form-horizontal" role="form"  method="post" action="/orderAdd/save/" >
                            	  <!-- 订单主表   ---------------------------------------------------------------->                           	  
									<div class="box-body">
										 <div class="box border blue">	
										 	    <table >
										 	    <tr><td><label>&nbsp;&nbsp;&nbsp;&nbsp;</label></td></tr>
										 	    <tr>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>订单编号:</label></td>
										 	     <td>  <input class="form-control"  type="text"    readonly="readonly" name="mainOrder.djbh" value="${mainOrder.djbh}" /></td>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>制单日期:</label></td>
										 	     <td>  <input  class="form-control datepicker" type="text"   id="mainOrder.rq"  name="mainOrder.rq" value="${mainOrder.rq}" /></td>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>单位名称:</label></td>
										 	     <td>  <input type="text" class="form-control"   name="dwmch" value="${dwmch}" />
										 	            <input type="hidden" class="form-control"   name="mainOrder.dwbh" value="${mainOrder.dwbh}" />   </td>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>收货地址:</label></td>
										 	     <td>  <input type="text"   class="form-control" name="mainOrder.shdz" value="${mainOrder.shdz}" /></td>
										 	    </tr>
										 	    <tr><td><label>&nbsp;&nbsp;&nbsp;&nbsp;</label></td></tr>
										 	    <tr>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>付款方式:</label></td>
										 	     <td>  
													<select name="mainOrder.fkfs"  class="form-control">
			                                            <c:forEach items="${fkfsList}" var="fkfs">
			                                              <option  >${fkfs}</option>  
			                                            </c:forEach>  
													</select>
                                                 </td>
										 	     <td>  <label>&nbsp;&nbsp;&nbsp;&nbsp;</label> </td>
										 	     <td>  <label>提货方式:</label></td>
										 	     <td>  										 	    
													<select name="mainOrder.thfs"   class="form-control">
			                                            <c:forEach items="${thfsList}" var="thfs">
			                                              <option >${thfs}</option>  
			                                            </c:forEach>  
													</select>
                                                 </td>

          
										 	    <tr><td><label>&nbsp;&nbsp;&nbsp;&nbsp;</label></td></tr>
										 	    <tr>	
										 	    <td><label>&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										 	    <td> <label>备注:</label>	</td>
												<td  colSpan="10">  <input type="text"   class="form-control" name="mainOrder.beizhu"/></td>								 	    
										 	    </tr>
										 	      <tr><td><label>&nbsp;&nbsp;&nbsp;&nbsp;</label></td></tr>
										 	    </table>
										 	    
											      <div class="form-group">
													<label class="col-sm-1 control-label"></label>
													<div class="col-sm-2">
													   <div class="input-group">
													      	<button  type="submit"  class="btn btn-info">提交</button>
														</div>
													</div>
												  </div>		
											</div>
									   </div>
									 <!-- 药品查询    ---------------------------------------------------------------->
									  <div class="box-body">
									    <div class="box border blue">	
									      <div class="separator"></div>	
										 <div class="tools">					   	
                                                <label > &nbsp; &nbsp; &nbsp;  </label>
												<label > 药品编号: </label><input type="text" name="Search_spbh"   id="Search_spbh" />
												<label > 药品名称: </label><input type="text" name="Search_spmch"   id="Search_spmch"/>
												<label > 拼音检索码: </label><input type="text" name="Search_zjm"   id="Search_zjm"/>
									             <label > &nbsp; &nbsp; &nbsp;  </label>
									             <input type="button" value="查询"  onclick="getPharmaceutitcal()" />
									     </div>
									     <div class="separator"></div>
										   <table class="table table-striped"  >
												<tr>
													<th >编号</th>
													<th >名称</th>
													<th >规格</th>
													<th >单位</th>
													<th >剂型</th>
													<th >厂家</th>
							
											<!-- 	<th >包装规格</th> -->	
													<th >操作</th>
												</tr>
												<tbody  id="queryPharmaceuticalTable">
												</tbody>
										</table>	
									     </div>
									    </div>   
									    <!-- 订单细表    --------------------------------------------------------------  -->
									   <div class="box-body">
									     <div class="box border blue">	
									          <div class="separator"></div>	
									     <table class="table table-striped"  >

											<tbody   id="detailTable">
												<tr >
												    <th >序号</th>
													<th >药品编号</th>
													<th >药品名称</th>
													<th >计量规格</th>
													<th >计量单位</th>
													<th >剂型</th>
													<th >生产厂家</th>
											<!--  	<th >包装规格</th>-->	
					
													<th >数量</th>
													<th >操作</th>
												</tr>
											</tbody>

										</table>
										</div>
										</div>
									</form>
										
								</div>
                                     <!-- /BOX -->
								</div>
								
							</div>
						</div>
						</div>
					</div>
					<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				<div class="separator"></div>	
	</section>
	<!--/PAGE -->
	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="${baseUrl}/js/jquery/jquery-2.0.3.min.js"></script>
	<!-- JQUERY UI-->
	<script src="${baseUrl}/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="${baseUrl}/bootstrap-dist/js/bootstrap.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="${baseUrl}/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js">
	</script><script type="text/javascript" src="${baseUrl}/js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="${baseUrl}/js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- TABLE CLOTH -->
	<script type="text/javascript" src="${baseUrl}/js/tablecloth/js/jquery.tablecloth.js"></script>
	<script type="text/javascript" src="${baseUrl}/js/tablecloth/js/jquery.tablesorter.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="${baseUrl}/js/jQuery-Cookie/jquery.cookie.min.js"></script>
	
	<script type="text/javascript" src="${baseUrl}/js/layer-v2.1/layer/layer.js"></script>
	<script type="text/javascript" src="${baseUrl}/js/laydate-v1.1/laydate/laydate.js"></script>
	

	<script src="${baseUrl}/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {		
			laydate({
			    elem: '#mainOrder.rq',
			    format: 'YYYY/MM/DD', // 分隔符可以任意定义，该例子表示只显示年月
			    festival: true, //显示节日
			    istoday:true
			});
			//$(".datepicker").datepicker();
			App.init(); //Initialise plugins and elements
		});

		function getPharmaceutitcal(){
			    $("#queryPharmaceuticalTable").html("");
				var jsonstr={"Search_spbh": $("#Search_spbh").val(), 
						     "Search_spmch": $("#Search_spmch").val() ,
						     "Search_zjm": $("#Search_zjm").val()};  
				  $.ajax({
			            type: "post",//使用get方法访问后台
			            dataType: "json",//返回json格式的数据
			            url: "${ctx}/orderAdd/queryPharmaceutical",//要访问的后台地址
			            data:jsonstr,//要发送的数据
			            complete : function(msg){//msg为返回的数据，在这里做数据绑定
			                var data = eval("("+msg.responseText+")");
							$.each(data, function(i, n){
			                    var tbBody = "";
			                        tbBody += "<tr>                        <td id=\"detail_spbh\">" + n.spbh + "</td>" 
			                                                            + "<td>" + n.spmch + "</td>"
			                                                            + "<td>" + n.shpgg + "</td>"
			                                                            + "<td>" + n.dw + "</td>"
			                                                            + "<td>" + n.jixing + "</td>"
			                                                            + "<td>" + n.shpchd + "</td>"
			          
			                                                     //       + "<td>" + n.jlgg + "</td>"
			                                                            + "<td><input type=\"button\" name=\"button\" value=\"添加\" onclick=\"addTr('"+n.spbh+"','"+n.spmch+"','"+n.shpgg+"','"+n.dw+"','"+n.jixing+"','"+n.shpchd+"','"+n.shj+"','"+n.jlgg+"');\" /> </td>"
			                                 +"</tr>";
			                        $("#queryPharmaceuticalTable").append(tbBody);  
			                });
			            }
			        });		
		}
		function addTr(spbh,spmch,shpgg,dw,jixing,shpchd,shj,jlgg){
			if(validataTable(spbh)){
				var newRow = "<tr ><td></td><td>"
	                +"<input type =\"text\"  name=\"table_spbh\" readonly=\"readonly\"  value=\""+spbh+"\"  />"+"</td><td>"
	               + spmch +"</td><td>"
	               + shpgg  +"</td><td>"
	               + dw + "</td><td>"
	               + jixing + "</td><td>"       
	               + shpchd + "</td><td>"   
	           //    + jlgg + "</td><td>"  

	               + "<input type =\"text\" id =\"table_sl"+spbh+"\" name=\"table_sl\" />" + "</td><td>"   
	            //   + "<input type =\"text\" id =\"table_sl2"+spbh+"\" name=\"table_sl2\" />" + "</td><td>"  

	               + "<input type =\"button\" value =\"删除\"  onclick =\"delTr(this)\" />" + "</td><td>"   
	               +"</tr>";
				$("#detailTable  tr:last").after(newRow);
				rowLength();
				//绑定事件，计算本行金额
				$("#table_sl"+spbh).bind('input propertychange', function() {
					  $(this).val($(this).val().replace(/D|^0/g,''));  

				}); 
				
			}else{
				openLayer("药品【"+spbh+"】已存在！");
				return false;
			}
			
			
		}
		
		//计算序号
		function rowLength(){
			var index = 1;
			 $("#detailTable tr td:nth-child(1)").each(function () {
			        $(this).text(index);
			        index ++;
			});
		}
		
	   //删除药品细表
	   function delTr(obj) {
		    $(obj).closest('tr').remove();
			rowLength();
		//	hj();
		}
		
	   //校验药品细表
	   function validataTable(spbh){ 
		   var result = true;
			 $("#detailTable tr td:nth-child(2)").each(function () {
			        var spbh_exist =$(this).find("input").val();
			        if(spbh_exist == spbh){
			        	result = false;
			        }
			}); 
			 return result;
	   }
		
		
		

		//打开弹出层
		function   openLayer(msg){
		    layer.alert(msg, {
		        skin: 'layui-layer-hui'
		        ,closeBtn: 0
		        ,shift: 1 //动画类型
		    });
		}

	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>