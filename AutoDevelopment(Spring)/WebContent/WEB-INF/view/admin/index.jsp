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
		}, 10000);
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
				<span>Hello Vibhav Kapadia!</span>
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
					<div class="inner bg-container"
						style="line-height: 47.8px; width: 201%; background-color: #fff;">
						<div class="row">
							<div class="col-xl-6 col-lg-7 col-xs-12">
								<div class="row">
									<div class="col-sm-6 col-xs-12">
										<div class="bg-primary top_cards">
											<div class="row icon_margin_left">

												<div class="col-lg-5 icon_padd_left"></div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content"
														style="padding-right: 280px; text-align: center;">
														<span class="number_val count"> <%
 	int userCounts = (int) session.getAttribute("userCounts");
 	out.print(userCounts);
 %>
														</span> <br /> <span class="card_description">User</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="bg-success top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left"></div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content"
														style="padding-right: 260px; text-align: center;">
														<span class="number_val count"> <%
 	int projectCounts = (int) session.getAttribute("projectCounts");
 	out.print(projectCounts);
 %>
														</span> <br /> <span class="card_description">Projects</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="bg-warning top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left"></div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content"
														style="padding-right: 260px; text-align: center;">
														<span class="number_val count" id="sales_count"> <%
 	int complaintCounts = (int) session.getAttribute("complaintCounts");
 	out.print(complaintCounts);
 %>
														</span> <br /> <span class="card_description">Complaints</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="bg-mint top_cards">
											<div class="row icon_margin_left" style="line-height: 1.8;">

												<div class="col-lg-7 icon_padd_right"
													style="width: 65.333333%;">
													<div class="float-xs-right cards_content"
														style="padding-right: 0px;">
														<span class="number_val count" style="margin-left: 78px;">
															<%
																int downloadCounts = (int) session.getAttribute("downloadCounts");
																out.print(downloadCounts);
															%>
														</span><br> <span class="card_description">
															Downloaded Projects</span>
													</div>
												</div>
											</div>
										</div>
									</div>
									<%-- <div class="col-sm-6 col-xs-12">
										<div class="bg-mint top_cards">
											<div class="row icon_margin_left">
												<div class="col-lg-5 icon_padd_left"></div>
												<div class="col-lg-7 icon_padd_right">
													<div class="float-xs-right cards_content"
														style="padding-right: 238px; text-align: center;">
														<span class="number_val count"> <%
 	int downloadCounts = (int) session.getAttribute("downloadCounts");
 	out.print(downloadCounts);
 %>
														</span> <br /> <span class="card_description">Down.Projects
														</span>
													</div>
												</div>
											</div>
										</div>
									</div> --%>
								</div>
							</div>
							<div class="col-xl-6 col-lg-5 col-xs-12 stat_align">
								<!-- div class="card weather_section md_align_section">
									<div class="card-block">
										<div class="row margin_align">
											<div class="col-xs-12">
												<div class="row">
													<div class="col-xs-6">
													<div class="icon sun-shower">
															<div class="cloud"></div>
															<div class="sun">
																<div class="rays"></div>
															</div>
															<div class="rain"></div>
														</div>
													</div>
													<div class="col-xs-6">
														<div class="weather-value">
															<span class=" text-white"><span class="degree">25&deg;</span>
															</span>
														</div>
														<div class="weather_location">
															<span class="text-white"><i
																class="fa fa-map-marker"></i> London</span>
														</div>
													</div>
												</div>
												<div class="row weekly_report">
													<div class="col-xs-3">
														<span>Mon</span> <br /> <img src="resources/img/w1.png"
															alt="weather">
														<p>27&deg;</p>
													</div>
													<div class="col-xs-3">
														<span>Tue</span> <br /> <img src="resources/img/w2.png"
															alt="weather">
														<p>23&deg;</p>
													</div>
													<div class="col-xs-3">
														<span>Wed</span> <br /> <img src="resources/img/w3.png"
															alt="weather">
														<p>19&deg;</p>
													</div>
													<div class="col-xs-3">
														<span>Thu</span> <br /> <img src="resources/img/w4.png"
															alt="weather">
														<p>38&deg;</p>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
 -->
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-xs-12 m-t-35">
								<!-- <div class="card">
									<div class="card-header bg-white">
										<div class=" twitter_section_head">Team Activities</div>
									</div>
									<div class="card-block twitter_section">
										<ul id="nt-example1">
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images.jpg" class="rounded-circle"
															alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Robert Rivera</span> <span class="time">2m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
											</li>
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images3.jpg"
															class="rounded-circle" alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Mildred Yanez</span> <span class="time">2m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
											</li>
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images2.jpg"
															class="rounded-circle" alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Thomas Rogers</span> <span class="time">3m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
											</li>
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images4.jpg"
															class="rounded-circle" alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Celeste Foxx</span> <span class="time">1m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
											</li>
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images3.jpg"
															class="rounded-circle" alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Mildred Yanez</span> <span class="time">2m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
											</li>
											<li>
												<div class="row">
													<div class="col-xs-2 col-lg-3 col-xl-2">
														<img src="resources/img/images2.jpg"
															class="rounded-circle" alt="image not found">
													</div>
													<div class="col-xs-10 col-lg-9 col-xl-10">
														<span class="name">Thomas Rogers</span> <span class="time">3m
															ago</span> <br> <span class="msg"> Lorem Ipsum is
															simply dummy text of the printing.</span>
													</div>
												</div>
												<hr>
										</ul>
									</div>
								</div>
 -->
							</div>
							<div class="col-lg-8 col-xs-12">
								<div class="row">
									<div class="col-lg-7 col-xs-12 m-t-35">
										<!-- <div class="card to_do">
											<div class="card-header bg-white">To Do List</div>
											<div class="card-block no-padding to_do_section">
												<div class="row">
													<div class="todo_section">
														<form class="list_of_items">
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_primarybadge"></div>
																	<div class="todoitemcheck checkbox-custom">
																		<input type="checkbox" class="striked large" />
																	</div>
																	<div class="todotext todoitem todo_width">Meeting
																		with CEO</div>
																</div>
																<div class="col-xs-3  showbtns todoitembtns">
																	<a href="#" class="todoedit"> <span
																		class="fa fa-pencil"></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_dangerbadge bg-danger"></div>
																	<div class="todoitemcheck">
																		<input type="checkbox" class="striked" />
																	</div>
																	<div class="todotext todoitem todo_width">Team
																		Out</div>
																</div>
																<div
																	class="col-xs-3  float-xs-right showbtns todoitembtns">
																	<a href='#' class='todoedit'> <span
																		class='fa fa-pencil'></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_warningbadge"></div>
																	<div class="todoitemcheck">
																		<input type="checkbox" class="striked" checked />
																	</div>
																	<div class="todotext todoitem todo_width strikethrough">Review
																		on Sales</div>
																</div>
																<div
																	class="col-xs-3 float-xs-right showbtnschk showbtns todoitembtns">
																	<a href="#" class="todoedit"> <span
																		class="fa fa-pencil"></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_infobadge"></div>
																	<div class="todoitemcheck">
																		<input type="checkbox" class="striked" />
																	</div>
																	<div class="todotext todoitem todo_width">Analysis
																		on Views</div>
																</div>
																<div
																	class="col-xs-3 float-xs-right showbtns todoitembtns">
																	<a href="#" class="todoedit"> <span
																		class="fa fa-pencil"></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_warningbadge"></div>
																	<div class="todoitemcheck">
																		<input type="checkbox" class="striked" checked />
																	</div>
																	<div class="todotext todoitem todo_width strikethrough">Seminar
																		on Market</div>
																</div>
																<div
																	class="col-xs-3 float-xs-right showbtnschk showbtns todoitembtns">
																	<a href="#" class="todoedit"> <span
																		class="fa fa-pencil"></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
															<div class="todolist_list showactions">
																<div class="col-xs-9 nopad custom_textbox1">
																	<div class="todo_primarybadge"></div>
																	<div class="todoitemcheck">
																		<input type="checkbox" class="striked" />
																	</div>
																	<div class="todotext todoitem todo_width">Renewal
																		Domain</div>
																</div>
																<div
																	class="col-xs-3  loat-xs-right showbtns todoitembtns">
																	<a href="#" class="todoedit"> <span
																		class="fa fa-pencil"></span>
																	</a> <span class='dividor'>|</span> <a href="#"
																		class="tododelete redcolor"> <span
																		class="fa fa-trash"></span>
																	</a>
																</div>
																<span class="seperator"></span>
															</div>
														</form>
													</div>
													<form id="main_input_box" class="form-inline">
														<div class="input-group todo">
															<span class="input-group-btn"> <a
																class="btn btn-primary" tabindex="0" role="button"
																data-toggle="popover" data-trigger="focus"
																data-contentwrapper=".mycontent" id="btn_color"
																data-badge="todo_mintbadge">Color&nbsp;&nbsp; <i
																	class="fa fa-caret-right"> </i></a>
															</span> <input id="custom_textbox" name="Item" type="text"
																required placeholder="Write and hit enter"
																class="input-md form-control" size="75" />
														</div>
													</form>
												</div>
												<div class="mycontent">
													<div class="border_color bg-danger border_danger"
														data-color="btn-danger" data-badge="bg-danger"></div>
													<div class="border_color bg-primary border_primary"
														data-color="btn-primary" data-badge="bg-primary"></div>
													<div class="border_color bg-info border_info"
														data-color="btn-info" data-badge="bg-info"></div>
													<div class="border_color bg-mint border_mint"
														data-color="btn-mint" data-badge="bg-mint"></div>
												</div>
											</div>
										</div>
 -->
									</div>
									<div class="col-lg-5 col-xs-12 m-t-35">
										<div class="block widget-notes">
											<!-- <div class="card" id="notes_section">
												<div class="card-header bg-white">Notes</div>
												<div class="content">
													<div class="notes" contenteditable="true">
														<div>
															Send e-mails. <br> Sometimes on purpose <br> It
															is a long established <br> Contrary to popular
															belief. <br> <i>Bootstrap4 admire admin</i> <br>Company
															status <br> Sometime is special <br> <b>Meeting
																with CEO</b> <br> Team out <br> welcome to admire

														</div>
													</div>
												</div>
											</div>
 -->
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

</body>
</html>



