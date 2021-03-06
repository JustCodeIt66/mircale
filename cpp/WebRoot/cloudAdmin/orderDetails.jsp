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
	
	<link rel="stylesheet" type="text/css" href="${baseUrl}/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	
	<link href="${baseUrl}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="${baseUrl}/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
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
										<li>订单查询</li>
										<li>订单详情</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">订单详情</h3>
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
                            
									<div class="box-body">
										 <div class="tools">	
												<form class="form-horizontal" role="form"  method="post" action="/orderDetail/add/${mainOrder.djbh}" >
												  <div class="form-group">
												  	<label class="col-sm-1 control-label">订单编号</label>
													<div class="col-sm-2">
													 <div class="input-group">			 											
												    	<input  class="form-control datepicker" type="text"     name="mainOrder.rq" value="${mainOrder.djbh}">
													</div>
													</div>
													<label class="col-sm-1 control-label">制单日期</label>
													<div class="col-sm-2">
													 <div class="input-group">			 											
												    	<input  class="form-control datepicker" type="text"     name="mainOrder.rq" value="${mainOrder.rq}">
													</div>
													</div>
												  </div>
												  
												  <div class="form-group">
													<label class="col-sm-1 control-label">单位编号</label>
													<div class="col-sm-2">
													   <div class="input-group">
														  <input type="text" class="form-control"   name="mainOrder.dwbh" value="${mainOrder.dwbh}">
														</div>
													</div>
													<label class="col-sm-1 control-label">单位名称</label>
													<div class="col-sm-2">
													  <div class="input-group">
														  <input type="text" class="form-control"  name="mainOrder.dwmch" value="${mainOrder.dwmch}">
													  </div>
													</div>
												  </div>
												  
												  <div class="form-group">
													<label class="col-sm-1 control-label">付款方式</label>
													<div class="col-sm-2">
													   <div class="input-group">
														  <input type="text" class="form-control"   name="mainOrder.fkfs" value="${mainOrder.fkfs}">
														</div>
													</div>
													<label class="col-sm-1 control-label">提货方式</label>
													<div class="col-sm-2">
													  <div class="input-group">
														  <input type="text" class="form-control"  name="mainOrder.thfs" value="${mainOrder.thfs}">
													  </div>
													</div>
													  <label class="col-sm-1 control-label">收货地址</label>
													<div class="col-sm-3">
													  <div class="input-group">
														  <input type="text" class="form-control"  name="mainOrder.shdz" value="${mainOrder.shdz}"/>
													  </div>
													</div>
												  </div>

												</form>
											 </div>		   	
									     </div>
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th >药品编号</th>
													<th >药品名称</th>
												<!-- 	<th >包装规格</th> -->
													<th >包装单位</th>
													<th >生产厂家</th>
													<th >剂型</th>
													<th >批准文号/注册证号</th>
													<th >单价</th>
													<th >数量</th>
													<th >金额</th>
													<th >操作</th>
												</tr>
												<c:forEach items="${orderDetailPage.list}" var="ordeDetail">
												<tr>
													<td style="text-align:left;">${ordeDetail.spbh}</td>
													<td style="text-align:left;">${ordeDetail.spmch}</td>
										<!-- 			<td style="text-align:left;"> ${ordeDetail.jlgg} </td>  -->
													<td style="text-align:left;"> ${ordeDetail.dw} </td>
													<td style="text-align:left;"> ${ordeDetail.shpchd} </td>
													<td style="text-align:left;"> ${ordeDetail.jixing} </td>
													<td style="text-align:left;"> ${ordeDetail.pizhuwh} </td>
													<td style="text-align:left;"> ${ordeDetail.dj} </td>
													<td style="text-align:left;"> ${ordeDetail.shl} </td>
													<td style="text-align:left;"> ${ordeDetail.je} </td>
													<td style="text-align:left;"> 				
				                                 	</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>

								</div>
								<!-- /BOX -->
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
	
		
	<!-- DATE RANGE PICKER -->
	<script src="${baseUrl}/js/bootstrap-daterangepicker/moment.min.js"></script>
	
	<script src="${baseUrl}/js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
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

	<script src="${baseUrl}/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {		
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>