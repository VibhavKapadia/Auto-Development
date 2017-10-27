<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Dashboard | Admire</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/img/logo1.ico" />

<!--global styles-->
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/components.css" />
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/custom.css" />
<!-- end of global styles-->
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/c3.min.css" />
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/toastr.min.css" />
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/switchery.min.css" />
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/new_dashboard.css" />
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />

</head>

<body class="body">
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
		<jsp:include page="mainHeader.jsp"></jsp:include>
		<!-- /HEADER -->
		<div class="wrapper" style="background-color: #eaeaea;">
			<%-- <!-- MENU -->
			<jsp:include page="menu.jsp"></jsp:include>
			<!--  /MENU --> --%>
			<!-- /#left -->
			<div id="content" class="bg-container">
				<header class="head">
				<div class="main-bar row">
					<div class="col-xs-6">
						<ul class="nav navbar-nav top_menubar">
							<li class="nav-item"><a class="nav-link text-white"
								href="Login.html"> <input type="button" value="Login"
									class="btn btn-primary">
							</a></li>
							<li class="nav-item"><a class="nav-link text-white"
								href="reg.html"> <input type="button" value="Registration"
									class="btn btn-primary">
							</a></li>

						</ul>
					</div>
				</div>
				</header>

			</div>
			<br>
			<div class="card"
				style="width: 1430px; margin-left: 50px; margin-right: 50px">
				<div class="card-header bg-white">About Auto Development</div>
				<div class="card-block m-t-35">
					<h5>As a developer have you ever thought of application that
						provides you to basic CRUD functionalities in Java.</h5>
					<br> <br>
					<p>Well good news, you are at right place. Here the solution
						for getting your code ready in just one click. There are just four
						simple steps to follow and you are done!!!</p>
					<p class="text-justify">Step 1: Create your project by just
						giving name.</p>
					<p class="text-justify">Step 2: Create your modules for each
						project by giving names.</p>

					<p class="text-justify">Step 3: Enter your form name for each
						module and give requirements of the form.</p>
					<p class="text-justify">Step 4: Download you project with CRUD
						functionalities in just one click.</p>
					<p>Easy right. Our main motto is to help developer and free
						them from burden of typing basic codes so that they can
						concentrate on other functionalities of their main project.</p>
					<label class="form-control-label">Need more info: </label> <a
						href='contact.html'><b>Contact</b></a>

				</div>
			</div>




			<!-- <div class="outer">
					<div class="inner bg-container">
						<div class="row">
							<div class="col-xl-6 col-lg-7 col-xs-12">
								<div class="row">
									<div class="col-sm-6 col-xs-12">
										<div class="bg-primary top_cards">
											<div class="row icon_margin_left">

												<div class="col-lg-5 icon_padd_left">
													<div class="float-xs-left">
														<span class="fa-stack fa-sm"> <i
															class="fa fa-circle fa-stack-2x"></i> <i
															class="fa fa-shopping-cart fa-stack-1x fa-inverse text-primary sales_hover"></i>
														</span>
													</div>
												</div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content">
														<span class="number_val" id="sales_count">750</span><i
															class="fa fa-long-arrow-up fa-2x"></i> <br> <span
															class="card_description">Sales</span>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="col-sm-6 col-xs-12">
										<div class="bg-success top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left">
													<div class="float-xs-left">
														<span class="fa-stack fa-sm"> <i
															class="fa fa-circle fa-stack-2x"></i> <i
															class="fa fa-eye fa-stack-1x fa-inverse text-success visit_icon"></i>
														</span>
													</div>
												</div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content">
														<span class="number_val" id="visitors_count">1,700</span><i
															class="fa fa-long-arrow-up fa-2x"></i> <br> <span
															class="card_description">Visitors</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6 col-xs-12">
										<div class="bg-warning top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left">
													<div class="float-xs-left">
														<span class="fa-stack fa-sm"> <i
															class="fa fa-circle fa-stack-2x"></i> <i
															class="fa fa-usd fa-stack-1x fa-inverse text-warning revenue_icon"></i>
														</span>
													</div>
												</div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content">
														<span class="number_val" id="revenue_count">1,200</span><i
															class="fa fa-long-arrow-up fa-2x"></i> <br> <span
															class="card_description">Revenue</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-sm-6 col-xs-12">
										<div class="bg-mint top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left">
													<div class="float-xs-left">
														<span class="fa-stack fa-sm"> <i
															class="fa fa-circle fa-stack-2x"></i> <i
															class="fa fa-users  fa-stack-1x fa-inverse text-mint sub"></i>
														</span>
													</div>
												</div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content">
														<span class="number_val" id="subscribers_count">1,020</span><i
															class="fa fa-long-arrow-down fa-2x"></i> <br> <span
															class="card_description">Subscribers</span>
													</div>
												</div>
											</div>
										</div>
									</div>


								

								</div>
							</div>

						</div>



						/.inner
					</div>
					/.outer
				</div>
 -->
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
								class="rounded-circle avatar-img" alt="avatar">
							&nbsp;Admin Statistics
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
						<br /> <span>Sales Improvement</span> <span
							class="float-xs-right"> <small>20%</small>
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
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/components.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/custom.js"></script>
		<!-- global scripts end-->

		<script type="text/javascript"
			src="${request.getContextPath}resources/js/raphael-min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/d3.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/c3.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/toastr.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/switchery.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.resize.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.stack.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.time.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.spline.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.categories.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.pie.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/jquery.flot.tooltip.min.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/newsTicker.js"></script>
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/countUp.min.js"></script>

		<!--end of plugin scripts-->
		<script type="text/javascript"
			src="${request.getContextPath}resources/js/new_dashboard.js"></script>
</body>
</html>



