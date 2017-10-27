<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="resources/img/logo1.ico" />
<!-- Global styles -->
<link type="text/css" rel="stylesheet"
	href="resources/css/components.css" />
<link type="text/css" rel="stylesheet" href="resources/css/custom.css" />
<!--End of Global styles -->
<!--Plugin styles-->
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap-datepicker.min.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/select2.min.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrapValidator.min.css" />
<link type="text/css" rel="stylesheet" href="resources/css/animate.css" />
<!--End of Plugin styles-->
<!--Page level styles-->
<link type="text/css" rel="stylesheet" href="resources/css/login.css" />
<!--End of Page level styles-->
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
	
	<div class="container wow fadeInDown" data-wow-duration="1s"
		data-wow-delay="0.5s">
		<div class="row login_top_bottom" style="margin-top: 100px;">
			<div class="col-lg-10 push-lg-1 col-sm-10 push-sm-1">
				<div class="row">
					<div class="col-lg-6 push-lg-3 col-sm-10 push-sm-1">
						<div class="login_logo login_border_radius1"
							style="background-color: #4E4C4C;">
							<h3 class="text-xs-center">
								<img src="resources/img/logow.png" alt="josh logo"
									class="admire_logo"><span class="text-white">Welcome
									<br /> Sign Up
								</span>
							</h3>
						</div>
						<div class="bg-white login_content login_border_radius">
							<form action="insertReg.html"
								class="form-horizontal login_validator m-b-20"
								id="register_valid" method="get">
								<div class="form-group row">
									<div class="col-sm-12">
										<label for="username" class="form-control-label">First
											name *</label>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-user text-primary"></i>
											</span> <input type="text" class="form-control" name="firstName"
												id="username" placeholder="First Name" maxlength="25">
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-12">
										<label for="username" class="form-control-label">Last
											Name *</label>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-user text-primary"></i>
											</span> <input type="text" class="form-control" name="lastName"
												id="username" placeholder="Last Name" maxlength="25">
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-12">
										<label for="email" class="form-control-label">Email *</label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope text-primary"></i> </span> <input type="text"
												placeholder="Email Address" name="email" id="email"
												class="form-control" onblur="checkmail()"
												pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required/>
										</div>
									</div>
								</div>
								<!-- 	<div class="form-group row">
									<div class="col-sm-12">
										<label for="password" class="form-control-label text-sm-right">Password
											*</label>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-key text-primary"></i>
											</span> <input type="password" placeholder="Password" id="password"
												name="password" class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-12">
										<label for="confirmpassword" class="form-control-label">Confirm
											Password *</label>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-key text-primary"></i>
											</span> <input type="password" placeholder="Confirm Password"
												name="confirmpassword" id="confirmpassword"
												class="form-control" />
										</div>
									</div>
								</div> -->
								<div class="form-group row">
									<div class="col-sm-12">
										<label for="phone" class="form-control-label">Phone *</label>
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="fa fa-phone text-primary"></i>
											</span> <input type="text" id="phone" placeholder="Phone Number"
												name="phone" class="form-control" />
										</div>
									</div>
								</div>
								<!-- <div class="form-group row">
									<div class="col-sm-12">
										<label class="form-control-label">Gender</label>
									</div>
									<div class="col-sm-2 col-xs-12">
										<label class="custom-control custom-radio"> <input
											type="radio" name="radio"
											class="custom-control-input form-control"> <span
											class="custom-control-indicator"></span> <a
											class="custom-control-description">Male</a>
										</label>
									</div>
									<div class="col-sm-2 col-xs-12">
										<label class="custom-control custom-radio"> <input
											type="radio" name="radio"
											class="custom-control-input form-control"> <span
											class="custom-control-indicator"></span> <a
											class="custom-control-description">Female</a>
										</label>
									</div>
								</div> -->
								<!-- <div class="form-group row">
									<div class="col-sm-9">
										<label class="custom-control custom-checkbox"> <input
											type="checkbox" class="custom-control-input form-control">
											<span class="custom-control-indicator"></span> <a
											class="custom-control-description">Send me latest news
												and updates.</a>
										</label>
									</div>
								</div> -->
								<div class="form-group row">
									<div class="col-sm-9">
										<input type="submit" value="Submit" class="btn btn-primary" />
										<button type="reset" class="btn btn-danger">Reset</button>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-9">
										<label class="form-control-label">Already have an
											account?</label> <a href="Login.html"
											class="text-primary login_hover"><b>Log In</b></a>
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
		src="resources/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript" src="resources/js/select2.js"></script>
	<script type="text/javascript"
		src="resources/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="resources/js/wow.min.js"></script>
	<!--End of plugin js-->
	<!--Page level js-->
	<script type="text/javascript" src="resources/js/register.js"></script>
	<!-- end of page level js -->
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
			xhttp.open("get", "searchEmailAJAX.html?email=" + email, true);
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
		<jsp:include page="mainHeader.jsp"></jsp:include>
		<!-- /HEADER -->
		<div class="wrapper">
				<!-- MENU -->
			<jsp:include page="menu.jsp"></jsp:include>
			<!--  /MENU -->

			<!-- /#left -->
			<div id="content" class="bg-container">
				<header class="head">
				<div class="main-bar row"></div>
				</header>
				<div class="outer">
					<div class="inner bg-container">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-file-text-o"></i> Registration
									</div>
									<div class="card-block m-t-35">

										<f:form action="insertReg.html"
											class="form-horizontal login_validator"
											id="form_block_validator" modelAttribute="reg" method="get"
											name="addReg">

											<div class="form-group row">
												<div class="col-lg-4  text-lg-right">
													<label for="required2" class="form-control-label">First
														Name *</label>
												</div>
												<div class="col-lg-4">
													<f:input path="firstName"
														placeholder="Type and hit Enter.." class="form-control"
														required="required" id="required2" />
												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="required2" class="form-control-label">Last
														Name *</label>
												</div>
												<div class="col-lg-4">
													<f:input path="lastName" placeholder="Type and hit Enter.."
														class="form-control" required="required" id="required2" />
												</div>
											</div>




											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="email2" class="form-control-label">Email
														*</label>
												</div>
												<div class="col-lg-4">
													<f:input path="email" placeholder="Type and hit Enter.."
														class="form-control" type="email" id="email" name="Email2"
														data-bv-field="Email2" required="required"
														onblur="checkmail()"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
												</div>
											</div>



											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">MobileNo
														*</label>
												</div>
												<div class="col-lg-4">

													<f:input type="tel" path="mobileNO"
														placeholder="Type and hit Enter.." class="form-control"
														required="required" id="digits" name="digits_only"
														pattern="^\d{10}" />
												</div>
											</div>
											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Address
														*</label>
												</div>
												<div class="col-lg-4">
													<f:textarea path="address"
														style="overflow: hidden; word-wrap: break-word; resize: none; height: 120px;"
														id="autosize" class="form-control" cols="50" rows="5"
														required="required" />


												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Country
														*</label>
												</div>
												<div class="col-lg-4">
													<select style=""
														class="validate[required] form-control select2"
														onchange="loadstate()" id="countryId" name="countryId"
														required>
														<option value="">Select a country</option>
														<c:forEach items="${sessionScope.countryList}" var="r">
															<option value="${r.countryId}">${r.countryName}</option>
														</c:forEach>

													</select>

												</div>
											</div>
											<div class="form-group row">
												<div class="col-xl-4 text-xl-right">
													<label for="range" class="form-control-label">Select
														State *</label>
												</div>

												<div class="col-lg-4">

													<select style="" id="stateId"
														class="validate[required] form-control select2"
														name="stateId" onchange="loadcity()" required>
														<option value="">Select a state</option>
													</select>

												</div>

											</div>


											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">City
														*</label>
												</div>
												<div class="col-lg-4">
													<select style="" id="cityId"
														class="validate[required] form-control select2"
														name="cityId" required>
														<option value="">Select a City</option>
													</select>

												</div>
											</div>



											<div class="form-actions form-group row">
												<div class="col-lg-4 push-lg-4">
													<input type="submit" value="Submit" class="btn btn-primary">
												</div>
											</div>
										</f:form>

										<div class="form-group">
											<label class="form-control-label">Already have an
												Account? </label> <a href='Login.html'><b>Login</b></a>
										</div>
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
	<script>
		var value = document.getElementById()
	</script>
	<script>
		function loadstate() {

			var countryId = document.getElementById("countryId").value;
			var xmlhttp;

			xmlhttp = new XMLHttpRequest();
			removeAllCity();
			removeAllState();

			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {
					var jsonObj = JSON.parse(xmlhttp.responseText);

					for (i = 0; i < jsonObj.length; i++) {
						var createOption = document.createElement("option");

						createOption.value = jsonObj[i].stateId;
						createOption.text = jsonObj[i].stateName;

						document.addReg.stateId.options.add(createOption);

					}
				}
			}

			xmlhttp.open("get", "searchStateAJAX.html?countryId=" + countryId,
					true);
			xmlhttp.send();
			/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */

			/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
				0: request not initialized
				1: server connection established
				2: request received
				3: processing request
				4: request finished and response is ready */
		}
		function removeAllState() {

			var removeState = document.addReg.stateId.options.length;
			for (i = removeState; i > 0; i--) {
				document.addReg.stateId.remove(i);
			}
			function removeAllCity() {

				var removeState = document.addReg.cityId.options.length;
				for (i = removeState; i > 0; i--) {
					document.addReg.cityId.remove(i);
				}
			}
		}
	</script>


	<script>
		function loadcity() {

			var stateId = document.getElementById("stateId").value;
			var xmlhttp;

			xmlhttp = new XMLHttpRequest();
			removeAllCity();

			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {
					var jsonObj = JSON.parse(xmlhttp.responseText);

					for (i = 0; i < jsonObj.length; i++) {
						var createOption = document.createElement("option");

						createOption.value = jsonObj[i].cityId;
						createOption.text = jsonObj[i].cityName;

						document.addReg.cityId.options.add(createOption);

					}
				}
			}

			xmlhttp.open("get", "searchCityAJAX.html?stateId=" + stateId, true);
			xmlhttp.send();
			/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */

			/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
				0: request not initialized
				1: server connection established
				2: request received
				3: processing request
				4: request finished and response is ready */
		}
		function removeAllCity() {

			var removeState = document.addReg.cityId.options.length;
			for (i = removeState; i > 0; i--) {
				document.addReg.cityId.remove(i);
			}
		}
	</script>

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
			xhttp.open("get", "searchEmailAJAX.html?email=" + email, true);
			xhttp.send();
		}
	</script>


</body>

</html>
 --%>