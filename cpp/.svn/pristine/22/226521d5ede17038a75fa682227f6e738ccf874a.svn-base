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
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="${baseUrl}/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
	<!-- TABLE CLOTH -->
	<link rel="stylesheet" type="text/css" href="${baseUrl}/js/tablecloth/css/tablecloth.min.css" />
    <link rel="stylesheet" type="text/css" href="${baseUrl}/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
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
							<div class="col-md-12">
								<div class="page-header">
									<!-- STYLER -->
									
									<!-- /STYLER -->
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
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">订单查询</h3>
									</div>
									<div class="description">from 博锐药业</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->

						<!-- /BORDERED HOVER -->
						<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border inverse">
									<div class="box-title">
										<h4><i class="fa fa-table"></i>订单列表</h4>
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

											<form method="post" action="/order">
										        <label > 订单编号: </label><input type="text" name="orderSearch.djbh"   value="${orderSearch.djbh}" />
												<label > 开始日期: </label> <input  class="datepicker" type="text"   id="ksrq"  name="ksrq" value="${ksrq}"/>
												<label > 结束日期: </label> <input  class="datepicker" type="text"   id="jsrq"  name="jsrq" value="${jsrq}"/>
									            <input type="submit" value="查询" />
									           </form>

									     <div class="separator"></div>
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th >编号</th>
													<th >日期</th>
													<th >单位名称</th>
	                                            	<th >单位编码</th>
		                                         	<th >付款方式</th>
		                                         	<th >提货方式</th>
		                                         	<th >收货地址</th>
		                                         	<th >业务员</th>
													<th >操作</th>
												</tr>
												<c:forEach items="${orderPage.list}" var="order">
												<tr>
													<td style="text-align:left;">${order.djbh}</td>
													<td style="text-align:left;">${order.rq}</td>
													<td style="text-align:left;"> ${order.dwmch} </td>
													<td style="text-align:left;"> ${order.dwbh} </td>
													<td style="text-align:left;"> ${order.fkfs} </td>
													<td style="text-align:left;"> ${order.thfs} </td>
													<td style="text-align:left;"> ${order.shdz} </td>
													<td style="text-align:left;"> ${order.ywy} </td>
													<td style="text-align:left;"> 				
													   &nbsp;&nbsp;<a href="/orderDetail/${order.djbh}">订单详情</a>
											           <c:if test = "${order.ywy == \"\"}" >
													   &nbsp;&nbsp;<a href="/order/delete/${order.djbh}">删除订单</a>  
													  </c:if>
													  &nbsp;&nbsp;<a href="javascript:void(0)" onclick="wlInfo('${order.djbh}')">物流信息</a>
				                                 	</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<c:set var="currentPage" value="${orderPage.pageNumber}" />
										<c:set var="totalPage" value="${orderPage.totalPage}" />
										<c:set var="actionUrl" value="/order/" />
										<c:set var="urlParas" value="${searchCon}" />
										<%@ include file="/common/_paginate.jsp"%>		
									</div>
								</div>
								<!-- /BOX -->
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
			</div>
		</div>
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
	<script type="text/javascript" src="${baseUrl}/js/laydate-v1.1/laydate/laydate.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script type="text/javascript" src="${baseUrl}/js/layer-v2.1/layer/layer.js"></script>
	<script src="${baseUrl}/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {		
			laydate({
			    elem: '#ksrq',
			    format: 'YYYY/MM/DD', // 分隔符可以任意定义，该例子表示只显示年月
			    festival: true //显示节日
			});
			laydate({
			    elem: '#jsrq',
			    format: 'YYYY/MM/DD', // 分隔符可以任意定义，该例子表示只显示年月
			    festival: true //显示节日
			});
			App.init(); //Initialise plugins and elements
		});
		
		function  wlInfo(djbh){  
			layer.open({
			    type: 2,
			    title: false,
			    closeBtn: 0,
			    shadeClose: true,
			    scrollbar:false,
			    area: ['600px', '180px'],
			    content:'${baseUrl}/wl/'+djbh
			});

		}
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>