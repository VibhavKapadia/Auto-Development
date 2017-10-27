<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Account Settings</title>
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
						<h4 class="nav_top_align">
							<i class="fa fa-pencil"></i> Account Settings
						</h4>
					</div>
					<div class="col-sm-7 col-lg-6">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
							<li class="breadcrumb-item"><a href="user.html"> <i
									class="fa fa-home" data-pack="default" data-tags=""></i>
									Dashboard
							</a></li>
						</ol>
					</div>
				</div>
				</header>
				<div class="outer">
					<div class="inner bg-container">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-file-text-o"></i> Account Information
									</div>
									<div class="card-block m-t-35">
										<%-- <form action="addCountry.html"
											class="form-horizontal  login_validator"
											id="form_block_validator"> --%>
										<f:form action="updateReg.html" data-parsley-validate=""
											novalidate="" class="form-horizontal login_validator"
											id="form_block_validator" modelAttribute="regList"
											method="get">
											<%
												String emailemail = session.getAttribute("email").toString();
											%>
											<input type="hidden" id="emailemail" value="<%=emailemail%>">
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
													<label for="range" class="form-control-label">Last
														Name *</label>
												</div>
												<div class="col-lg-4">
													<f:input path="lastName" placeholder="Type and hit Enter.."
														class="form-control" required="required" id="required2" />
												</div>
											</div>
											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Email
														*</label>
												</div>
												<div class="col-lg-4">
													<f:input path="email" placeholder="Type and hit Enter.."
														class="form-control" required="true" id="email"
														name="email" onblur="checkmail()"
														pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" />
												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Mobile
														NO *</label>
												</div>
												<div class="col-lg-4">
													<f:input path="mobileNO" placeholder="Type and hit Enter.."
														class="form-control" required="required" id="required2" />
												</div>
											</div>
											<%-- <div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Address
														*</label>
												</div>
												<div class="col-lg-4">
													<f:textarea path="address"
														style="overflow: hidden; word-wrap: break-word; resize: none; height: 120px;"
														id="autosize" class="form-control" cols="50" rows="5" />


												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">Country
														*</label>
												</div>
												<div class="col-lg-4">
													<f:select style="" id="sport"
														class="validate[required] form-control select2"
														path="countryVO.countryId">


														<f:options items="${countryList}" itemLabel="countryName"
															itemValue="countryId" />

													</f:select>

												</div>
											</div>
											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">State
														*</label>
												</div>
												<div class="col-lg-4">
													<f:select style="" id="sport"
														class="validate[required] form-control select2"
														path="stateVO.stateId">


														<f:options items="${stateList}" itemLabel="stateName"
															itemValue="stateId" />


													</f:select>

												</div>
											</div>

											<div class="form-group row">
												<div class="col-lg-4 text-lg-right">
													<label for="range" class="form-control-label">City
														*</label>
												</div>
												<div class="col-lg-4">
													<f:select style="" id="sport"
														class="validate[required] form-control select2"
														path="cityVO.cityId">

														<f:options items="${cityList}" itemLabel="cityName"
															itemValue="cityId" />

													</f:select>

												</div>
											</div>
 --%>
											<f:input path="regId" type="hidden" />

											<div class="form-actions form-group row">
												<div class="col-lg-4 push-lg-4">
													<input type="submit" value="Submit" class="btn btn-primary">
												</div>
											</div>
										</f:form>
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
		function checkmail() {

			var email = document.getElementById("email").value;
			var emailemail = document.getElementById("emailemail").value;

			if (email != emailemail) {

				var xhttp = new XMLHttpRequest();

				xhttp.onreadystatechange = function() {
					if (xhttp.readyState == 4) {
						var jsonObj = JSON.parse(xhttp.responseText);

						alert("Email Not valid");
						document.getElementById("email").value = "";

					}
				};
				xhttp.open("get", "searchEmailAJAX.html?email=" + email, true);
				xhttp.send();
			}
		}
	</script>


</body>

</html>
