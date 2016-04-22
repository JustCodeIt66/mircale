<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
											<a href="#">药品管理</a>
										</li>
										<li>药品查询</li>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">药品查询</h3>
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
										<h4><i class="fa fa-table"></i>药品详情</h4>
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
											<form method="post" action="/pharmaceutical">
												<label > 药品编号: </label><input type="text" name="pharmaceuticalSearch.spbh">
												<label > 药品名称: </label><input type="text" name="pharmaceuticalSearch.spmch">
												<label > 拼音检索码: </label><input type="text" name="pharmaceuticalSearch.zjm">
									          <input type="submit" value="查询" />
									       
								         	</form>
									     </div>
									     <div class="separator"></div>
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th >编号</th>
													<th >名称</th>
													<th >规格</th>
													<th >包装单位</th>
													<th >生产厂家</th>
													<th >剂型</th>
													<th >批准文号/注册证号</th>
													<th >单价</th>
													<th >功效</th>
													<th >存储方式</th>
													<th >有效期</th>
													<th >备注</th>
													<!--  <th >状态</th>-->
												</tr>
												<c:forEach items="${pharmaceuticalPage.list}" var="pharmaceutical">
												<tr>
													<td style="text-align:left;">${pharmaceutical.spbh}</td>
													<td style="text-align:left;">${pharmaceutical.spmch}</td>
													<td style="text-align:left;"> ${pharmaceutical.shpgg} </td>
													<td style="text-align:left;"> ${pharmaceutical.dw} </td>
													<td style="text-align:left;"> ${pharmaceutical.shpchd} </td>
													<td style="text-align:left;"> ${pharmaceutical.jixing} </td>
													<td style="text-align:left;"> ${pharmaceutical.pizhuwh} </td>
													<td style="text-align:left;"> 请联系客服</td>
													<td style="text-align:left;"> ${pharmaceutical.shpgx}</td>
													<td style="text-align:left;"> ${pharmaceutical.chuczysx}</td>
													<td style="text-align:left;"> ${pharmaceutical.youxq}月</td>
													<td style="text-align:left;"> ${pharmaceutical.beizhu}</td>
												<!-- 	<td style="text-align:left;"> ${pharmaceutical.beactive}</td> -->
												</tr>
												</c:forEach>
											</tbody>
										</table>
										<c:set var="currentPage" value="${pharmaceuticalPage.pageNumber}" />
										<c:set var="totalPage" value="${pharmaceuticalPage.totalPage}" />
										<c:set var="actionUrl" value="/pharmaceutical/" />
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
	<!-- CUSTOM SCRIPT -->
	<script src="${baseUrl}/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {		
		
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>