
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">
<head>
<title>Login | Admire</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="resources/img/logo1.ico" />
<!--Global styles -->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!--End of Global styles -->
<!--Plugin styles-->
<link type="text/css" rel="stylesheet"
	href="css/bootstrapValidator.min.css" />
<link type="text/css" rel="stylesheet" href="resources/css/animate.css" />
<!--End of Plugin styles-->
<link type="text/css" rel="stylesheet" href="resources/css/login.css" />
</head>
<body>
	<div class="preloader"
		style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
		<div class="preloader_img"
			style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
			<img src="resources/img/loader.gif" style="width: 40px;"
				alt="loading...">

		</div>
	</div>

	<div class="container wow fadeInDown" data-wow-delay="0.5s"
		data-wow-duration="2s">
		<div class="row">
			<div
				class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom"
				style="margin-top: 100px;">
				<div class="row">
					<div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">
						<div class="login_logo login_border_radius1"
							style="background-color: #4E4C4C;">
							<h3 class="text-xs-center">
								<img src="resources/img/logow.png" alt="josh logo"
									class="admire_logo"><span class="text-white">
									Welcome &nbsp;<br /> Change Password
								</span>
							</h3>
						</div>
						<div class="bg-white login_content login_border_radius">
							<form action="sendpassword.html" id="login_validator"
								method="get" class="login_validator">
								<div class="form-group">
									<label for="email" class="form-control-label"> E-mail</label>
									<div class="input-group">
										<span class="input-group-addon input_email"><i
											class="fa fa-envelope text-primary"></i></span> <input type="text"
											class="form-control  form-control-md" name="email" id="email"
											placeholder="E-mail" onblur="return checkmail()"
											pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
									</div>
								</div>
								<!--</h3>-->
								<div class="form-group">
									<div class="row">
										<div class="col-lg-12">
											<input type="submit" value="Submit"
												class="btn btn-primary btn-block login_button">
										</div>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- global js -->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/tether.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<!-- end of global js-->

	<!--Plugin js-->
	<script type="text/javascript"
		src="resources/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="resources/js/wow.min.js"></script>
	<!--End of plugin js-->
	<script type="text/javascript" src="resources/js/login.js"></script>
	<script>
		function checkmail() {

			var email = document.getElementById("email").value;

			var xhttp = new XMLHttpRequest();

			xhttp.onreadystatechange = function() {
				if (xhttp.readyState == 4) {
					var jsonObj = JSON.parse(xhttp.responseText);
					alert(xhttp.responseText);

					alert("Email Not valid");
					document.getElementById("email").value = "";

				}
			};
			xhttp.open("get", "searchnotEmailAJAX.html?email=" + email, true);
			xhttp.send();
		}
	</script>
</body>

</html>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Form Validations | Admire</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/img/logo1.ico" />
<!-- global styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!-- end of global styles-->
<!--Plugin styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/validationEngine.jquery.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker3.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/DateTimePicker.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrapValidator.min.css" />
<!--End of plugin styles-->
<!--Page level styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/form_validations.css" />
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />
<!-- end of page level styles -->
</head>
<body>
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
					<div class="col-sm-5 col-lg-6">
						<h4 class="nav_top_align">WELCOME</h4>
					</div>
					<div class="col-sm-7 col-lg-6">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
						</ol>
					</div>
				</div>
				</header>
				<div class="outer">
					<div class="inner bg-container">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<div class="card-header bg-white">Forgot Password</div>
									<div class="card-block m-t-35">
										<form action="sendpassword.html"
											class="form-horizontal login_validator"
											id="form_block_validator" method="get">

											<div class="form-group row">
												<div class="col-lg-4  text-lg-right">
													<label for="required2" class="form-control-label">Enter
														Email *</label>
												</div>
												<div class="col-lg-4">
													<input type="email" placeholder="Type and hit Enter.."
														name="email" class="form-control" required="required"
														id="required2" />

												</div>
											</div>


											<div class="form-actions form-group row">
												<div class="col-lg-4 push-lg-4">
													<input type="submit" value="Submit" class="btn btn-primary" />

												</div>
											</div>
										</form>



									</div>
								</div>
							</div>
							<!-- /.col-lg-12 -->
						</div>
						<!-- /.row -->
						<!-- /.row -->
					</div>
					<!-- /.row -->
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
					</span> &nbsp; Pending Tasks <span class="dynamicsparkline float-xs-right">12</span></li>
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
	<!--End of Global scripts-->
	<!--Plugin scripts-->
	<script type="text/javascript"
		src="resources/js/jquery.validationEngine.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.validationEngine-en.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="resources/js/DateTimePicker.min.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="resources/js/moment.min.js"></script>
	<!--End of plugin scripts-->
	<!--Page level scripts-->
	<script type="text/javascript" src="resources/js/form.js"></script>
	<script type="text/javascript" src="resources/js/form_validation.js"></script>
	<!-- end page level scripts -->




</body>

</html>
 --%>