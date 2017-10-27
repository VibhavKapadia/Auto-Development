<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Data Tables | Admire</title>
<!--IE Compatibility modes-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--Mobile first-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/img/logo1.ico" />

<!-- global styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!--end of global styles-->
<!--plugin styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/select2.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/scroller.bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/colReorder.bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/dataTables.bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/dataTables.bootstrap.css" />
<!-- end of plugin styles -->
<!--Page level styles-->
<link type="text/css" rel="stylesheet" href="resources/css/tables.css" />
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />
<!--End of page level styles-->
</head>

<body class="datatable_page">
	<div class="preloader"
		style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
		<div class="preloader_img"
			style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
			<img src="resources/img/loader.gif" style="width: 40px;"
				alt="loading...">
		</div>
	</div>

	<div class="bg-dark" id="wrap">
		<!-- HEADER -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- /HEADER -->
		<div class="wrapper">
			<!-- MENU -->
			<jsp:include page="menu.jsp"></jsp:include>
			<!--  /MENU -->

			<!-- /#left -->



			<div id="content" class="bg-container">
				<header class="head">
				<div class="main-bar row">
					<div class="col-lg-6 col-md-4 col-sm-4">
						<h4 class="nav_top_align">
							<i class="fa fa-th"></i> Data Tables
						</h4>
					</div>
					<div class="col-lg-6 col-md-8 col-sm-8">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
							<li class="breadcrumb-item"><a href="index.html"> <i
									class="fa fa-home" data-pack="default" data-tags=""></i>
									Dashboard
							</a></li>
							<li class="breadcrumb-item"><a href="#">Tables</a></li>
							<li class="breadcrumb-item active">Data Tables</li>
						</ol>
					</div>
				</div>
				</header>
				<div class="outer">
					<div class="inner bg-light lter bg-container">
						<div class="row">
							<div class="col-xs-12 data_tables">
								<!-- BEGIN EXAMPLE1 TABLE PORTLET-->
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-table"></i> Datatable with Table Tools
									</div>
									<div class="card-block p-t-25">
										<div class="">
											<div class="pull-sm-right">
												<div class="tools pull-sm-right"></div>
											</div>
										</div>
										<f:form modelAttribute="ls">
											<table class="table table-striped table-bordered table-hover"
												id="sample_1">
												<thead>
													<tr>
														<th>City ID</th>
														<th>Country Name</th>
														<th>State Name</th>
														<th>City Name</th>
														<th>City Description</th>
														<th>Delete</th>
														<th>Update</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ls}" var="r">



														<tr>
															<td>${r.cityId}</td>

															<td>${r.countryVO.countryName}</td>
															<td>${r.stateVO.stateName}</td>
															<td>${r.cityDescription}</td>
															<td>${r.cityName}</td>
															<td><a href="deleteCity.html?cityId=${r.cityId}">Delete</a>
															<td><a href="editCity.html?cityId=${r.cityId}">Update</a>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</f:form>
									</div>
								</div>
								<!-- END EXAMPLE1 TABLE PORTLET-->

							</div>
						</div>
					</div>
					<!-- /.inner -->
				</div>
				<!-- /.outer -->
			</div>
			<!-- /#content -->
		</div>
		<!--wrapper-->
		<div id="right">
			<div class="right_content">
				<div class="alert alert-success white_txt">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>Welcome Micheal <br /></strong> Set Your Skin Here.
					Checkout Admin Statistics. Good Day!.
				</div>
				<div class="well well-small dark">
					<div class="xs_skin_hide hidden-sm-up toggle-right">
						<i class="fa fa-cog"></i>
					</div>
					<h4 class="brown_txt">
						<span class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x"></i> <i
							class="fa fa-paint-brush fa-stack-1x fa-inverse"></i>
						</span> Skins
					</h4>
					<br />
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('blue_black_skin.css','css')">
						<div class="skin_blue skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('green_black_skin.css','css')">
						<div class="skin_green skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('purple_black_skin.css','css')">
						<div class="skin_purple skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('orange_black_skin.css','css')">
						<div class="skin_orange skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('red_black_skin.css','css')">
						<div class="skin_red skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('mint_black_skin.css','css')">
						<div class="skin_mint skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('brown_black_skin.css','css')">
						<div class="skin_brown skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skinmulti_btn"
						onclick="javascript:loadjscssfile('black_skin.css','css')">
						<div class="skin_black skin_size"></div>
						<div class="skin_black skin_size"></div>
					</div>
					<div class="skin_btn skin_blue"
						onclick="javascript:loadjscssfile('blue_skin.css','css')"></div>
					<div class="skin_btn skin_green"
						onclick="javascript:loadjscssfile('green_skin.css','css')"></div>
					<div class="skin_btn skin_purple"
						onclick="javascript:loadjscssfile('purple_skin.css','css')"></div>
					<div class="skin_btn skin_orange"
						onclick="javascript:loadjscssfile('orange_skin.css','css')"></div>
					<div class="skin_btn skin_red"
						onclick="javascript:loadjscssfile('red_skin.css','css')"></div>
					<div class="skin_btn skin_mint"
						onclick="javascript:loadjscssfile('mint_skin.css','css')"></div>
					<div class="skin_btn skin_brown"
						onclick="javascript:loadjscssfile('brown_skin.css','css')"></div>
					<div class="skin_btn skin_black"
						onclick="javascript:loadjscssfile('black_skin.css','css')"></div>
				</div>
				<div class="well well-small dark">
					<h4 class="brown_txt margin15_bottom">
						<img src="resources/img/admin.jpg" width="32" height="32"
							class="rounded-circle avatar-img" alt="avatar"> &nbsp;Admin
						Statistics
					</h4>
					<br />
					<ul class="list-unstyled">
						<li class="green_txt margin15_bottom"><span
							class="fa-stack fa-sm"> <i
								class="fa fa-circle fa-stack-2x text-mint"></i> <i
								class="fa fa-lock fa-stack-1x fa-inverse"></i>
						</span> &nbsp; Last Login <span class="inlinesparkline float-xs-right">2hrs
								Back</span></li>
						<li class="warning_txt margin15_bottom"><span
							class="fa-stack fa-sm"> <i
								class="fa fa-circle fa-stack-2x text-brown"></i> <i
								class="fa fa-pencil fa-stack-1x fa-inverse"></i>
						</span> &nbsp; Pending Tasks <span
							class="dynamicsparkline float-xs-right">12</span></li>
						<li class="primary_txt margin15_bottom"><span
							class="fa-stack fa-sm"> <i
								class="fa fa-circle fa-stack-2x text-primary"></i> <i
								class="fa fa-cloud fa-stack-1x fa-inverse"></i>
						</span> &nbsp; Weather Today <span class="dynamicbar float-xs-right">Rainy</span>
						</li>
						<li class="margin15_bottom"><span class="fa-stack fa-sm">
								<i class="fa fa-circle fa-stack-2x text-brown"></i> <i
								class="fa fa-calendar fa-stack-1x fa-inverse"></i>
						</span> &nbsp; Events <span class="inlinebar float-xs-right">Team
								Out</span></li>
						<li class="success_txt margin15_bottom"><span
							class="fa-stack fa-sm"> <i
								class="fa fa-circle fa-stack-2x text-success"></i> <i
								class="fa fa-bell fa-stack-1x fa-inverse"></i>
						</span> &nbsp; Notifications <span class="inlinebar float-xs-right">5</span>
						</li>
					</ul>
				</div>
				<div class="well well-small dark right_progressbar_section">
					<h4 class="brown_txt">
						<span class="fa-stack fa-sm"> <i
							class="fa fa-circle fa-stack-2x text-brown"></i> <i
							class="fa fa-hand-o-down fa-stack-1x fa-inverse"></i>
						</span> Alerts
					</h4>
					<br /> <span>Sales Improvement</span> <span class="float-xs-right">
						<small>20%</small>
					</span>
					<div class="progress xs">
						<progress class="progress progress-striped progress-primary"
							value="20" max="100"></progress>
					</div>
					<span>Server Load</span> <span class="float-xs-right"> <small>80%</small>
					</span>
					<div class="progress xs">
						<progress class="progress  progress-striped progress-mint"
							value="80" max="100"></progress>
					</div>
					<span>Traffic Improvement</span> <span class="float-xs-right">
						<small>55%</small>
					</span>
					<div class="progress xs">
						<progress class="progress  progress-striped progress-danger"
							value="55" max="100"></progress>
					</div>
				</div>
			</div>
		</div>
		<!-- # right side -->
	</div>
	<!-- /#wrap -->
	<!-- global scripts-->
	<script type="text/javascript" src="resources/js/components.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
	<!--end of global scripts-->
	<!--plugin scripts-->
	<script type="text/javascript" src="resources/js/select2.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.tableTools.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.colReorder.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.responsive.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.rowReorder.min.js"></script>
	<script type="text/javascript" src="resources/js/buttons.colVis.min.js"></script>
	<script type="text/javascript" src="resources/js/buttons.html5.min.js"></script>
	<script type="text/javascript"
		src="resources/js/buttons.bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/buttons.print.min.js"></script>
	<script type="text/javascript"
		src="resources/js/dataTables.scroller.min.js"></script>
	<!-- end of plugin scripts -->
	<!--Page level scripts-->
	<script type="text/javascript" src="resources/js/datatable.js"></script>
	<!-- end of global scripts-->
</body>

</html>
