<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Dashboard | Auto Development</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/img/logo1.ico" />

<!--global styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!-- end of global styles-->
<link type="text/css" rel="stylesheet" href="resources/css/c3.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/toastr.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/switchery.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/new_dashboard.css" />
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />
<script src="resources/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script>
	$('.count').each(function() {
		$(this).prop('Counter', 0).animate({
			Counter : $(this).text()
		}, {
			duration : 2000,
			easing : 'swing',
			step : function(now) {
				$(this).text(Math.ceil(now));
			}
		});
	});
</script>

<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.toast-top-right').fadeOut()
		}, 3000);
	});
</script>


</head>

<body class="body">

	<%
		Integer i = (Integer) session.getAttribute("fadeinfadeoutindexcount");
		System.out.println(i);
		if (i != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Hello<br> <%
					String fn = session.getAttribute("firstNameindex").toString();
						String ln = session.getAttribute("lastNameindex").toString();
						out.print(fn);
						out.print(" "+ln);
				%>
				</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Welcome!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutindexcount", 0);
	%>

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
					<div class="col-xs-6">
						<h4 class="m-t-5">
							<i class="fa fa-home"></i> Dashboard
						</h4>
					</div>
				</div>
				</header>
				<div class="outer" style="background-color: #fff;">
					<div class="inner bg-container" style="background-color: #fff;">
						<div class="row"
							style="margin-right: -987px; margin-bottom: 17px;">
							<div class="col-xl-6 col-lg-7 col-xs-12">
								<div class="row" style="margin-right: -146px;">
									<div class="col-sm-6 col-xs-12">
										<div class="bg-primary top_cards">
											<div class="row icon_margin_left" style="line-height: 2.3;">


												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content"
														style="padding-right: 32px;">
														<span class="number_val count" id="sales_count"
															style="margin-left: 19px;"> <%
 	int projectCounts = (int) session.getAttribute("projectuserCounts");
 	out.print(projectCounts);
 %>
														</span> <br /> <span class="card_description">Projects</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="bg-success top_cards">
											<div class="row icon_margin_left" style="line-height: 2.3;">

												<div class="col-lg-7 icon_padd_right"
													style="width: 65.333333%;">
													<div class="float-xs-right cards_content">
														<span class="number_val count" style="margin-left: 72px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
															int downloadCounts = (int) session.getAttribute("downloaduserCounts");
															out.print(downloadCounts);
														%></span><br /> <span class="card_description">
															Downloaded Projects</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- /.inner -->
					</div>
					<!-- /.outer -->
				</div>
				<!-- /#content -->
			</div>
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
	<script type="text/javascript"
		src="${request.getContextPath}resources/js/components.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
	<!-- global scripts end-->

	<script type="text/javascript" src="resources/js/raphael-min.js"></script>
	<script type="text/javascript" src="resources/js/d3.min.js"></script>
	<script type="text/javascript" src="resources/js/c3.min.js"></script>
	<script type="text/javascript"
		src="${request.getContextPath}resources/js/toastr.min.js"></script>
	<script type="text/javascript" src="resources/js/switchery.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.flot.js"></script>
	<script type="text/javascript" src="resources/js/jquery.flot.resize.js"></script>
	<script type="text/javascript" src="resources/js/jquery.flot.stack.js"></script>
	<script type="text/javascript" src="resources/js/jquery.flot.time.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.flot.spline.min.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.flot.categories.js"></script>
	<script type="text/javascript" src="resources/js/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.flot.tooltip.min.js"></script>
	<script type="text/javascript" src="resources/js/newsTicker.js"></script>
	<script type="text/javascript" src="resources/js/countUp.min.js"></script>

	<!--end of plugin scripts-->
	<script type="text/javascript" src="resources/js/new_dashboard.js"></script>
	<script>
		$('.count').each(function() {
			$(this).prop('Counter', 0).animate({
				Counter : $(this).text()
			}, {
				duration : 4000,
				easing : 'swing',
				step : function(now) {
					$(this).text(Math.ceil(now));
				}
			});
		});
	</script>

</body>
</html>



