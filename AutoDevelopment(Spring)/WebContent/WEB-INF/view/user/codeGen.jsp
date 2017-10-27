<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Code Generation</title>
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
<link type="text/css" rel="stylesheet"
	href="resources/css/toastr.min.css" />

<script src="resources/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>



<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.toast-top-right').fadeOut()
		}, 15000);
	});
</script>
<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.Hello').fadeOut()
		}, 7000);
	});
</script>


<script type="text/javascript"
	src="${request.getContextPath}resources/js/toastr.min.js"></script>
<!-- end of page level styles -->
</head>

<%
	Integer i = (Integer) session.getAttribute("fadeinfadeoutprojectcount");

	System.out.println(i);
	if (i != 1) {
%>
<div class="preloader"
	style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">

	<div class="preloader_img"
		style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">

		<img src="resources/img/loader.gif" style="width: 40px;"
			alt="loading...">
	</div>
</div>

<%
	}

	if (i != 0) {
%>
<div class="abc">
	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Succesfull!</span>
				<h5 class="text-white"></h5>
			</div>


			<div class="Hello"
				style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">

				<div align="center">

					<h4 style="padding-top: 200px;">Generating Code......</h4>
					<br> <br> <img src="resources/img/loader.gif"
						style="padding-top: 300px" alt="loading...">
				</div>

			</div>


			<div class="toast-message">Project Code Created!</div>
		</div>
	</div>
</div>

<%
	}
	session.setAttribute("fadeinfadeoutprojectcount", 0);
%>

<body>

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
							<i class="fa fa-pencil"></i> Code Generation
						</h4>
					</div>
					<div class="col-sm-7 col-lg-6">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
							<li class="breadcrumb-item"><a href="index.html"> <i
									class="fa fa-home" data-pack="default" data-tags=""></i>
									Dashboard
							</a></li>
							<li class="active breadcrumb-item">Code Generation</li>
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
										<i class="fa fa-file-text-o"></i> Code Genration
									</div>
									<div class="card-block m-t-35">
										<%-- <form action="#" class="form-horizontal  login_validator"
											id="form_block_validator"> --%>
										<f:form action="GencodeGen.html" data-parsley-validate=""
											novalidate="" class="form-horizontal login_validator"
											method="get" id="form_block_validator"
											modelAttribute="project">

											<div class="form-group row">
												<div class="col-xl-4 text-lg-right">
													<label for="sport" class="form-control-label">Select
														Project *</label>
												</div>
												<div class="col-lg-4">

													<f:select style="" id="sport"
														class="validate[required] form-control select2"
														path="projectId" required="true">
														<f:option value="">Select a project</f:option>
														<c:forEach items="${sessionScope.projectList}" var="r">

															<f:option value="${r.projectId}">${r.projectName}</f:option>

														</c:forEach>

													</f:select>

												</div>
											</div>



											<div class="form-actions form-group row">
												<div class="col-lg-4 push-lg-4">
													<input type="submit" value="Generate Code"
														class="btn btn-primary">
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

				<c:forEach items="${sessionScope.projectList}" var="r">
					<c:if test="${r.downloadStatus eq 'YES' }">
						<br>
						<div class="outer">
							<div class="inner bg-container">
								<div class="row">
									<div class="col-xl-12">
										<div class="card">
											<div class="card-header bg-white">${r.projectName}
												<div align="right" style="size: 30px;">
													<a href="downloadProject.html?projectId=${r.projectId}">Download</a>
												</div>
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





					</c:if>

				</c:forEach>
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
</body>

</html>
