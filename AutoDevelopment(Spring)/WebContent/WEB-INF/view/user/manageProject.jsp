<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
<meta charset="UTF-8">
<title>Manage Projects</title>
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
<link type="text/css" rel="stylesheet" href="#" id="skin_change" />
<link type="text/css" rel="stylesheet"
	href="${request.getContextPath}resources/css/toastr.min.css" />
<script src="resources/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script type="text/javascript"
	src="${request.getContextPath}resources/js/toastr.min.js"></script>
<script>
	$(window).load(function() {
		setTimeout(function() {
			$('.toast-top-right').fadeOut()
		}, 2000);
	});
</script>
<!--End of page level styles-->
</head>

<body class="datatable_page">
	<%
		Integer b = (Integer) session.getAttribute("fadeinfadeoutupdateprojectcount");
		if (b != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Project Updated!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutupdateprojectcount", 0);
	%>
	<%
		Integer c = (Integer) session.getAttribute("fadeinfadeoutupdatemodulecount");
		if (c != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Module Updated!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutupdatemodulecount", 0);
	%>
	<%
		Integer d = (Integer) session.getAttribute("fadeinfadeoutdeletemodulecount");
		if (d != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Module Deleted!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutdeletemodulecount", 0);
	%>
	<%
		Integer e = (Integer) session.getAttribute("fadeinfadeoutdeleteformcount");
		if (e != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Form Deleted!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutdeleteformcount", 0);
	%>
	<%
		Integer f = (Integer) session.getAttribute("fadeinfadeoutupdateformcount");
		if (f != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Form Updated!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutupdateformcount", 0);
	%>

	<%
		Integer g = (Integer) session.getAttribute("fadeinfadeoutupdateinnerformcount");
		if (g != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Form Details Updated!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutupdateinnerformcount", 0);
	%>

	<%
		Integer h = (Integer) session.getAttribute("fadeinfadeoutdeleteinnerformcount");
		if (h != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Form Details Deleted!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutdeleteinnerformcount", 0);
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
					<div class="col-lg-6 col-md-4 col-sm-4">
						<h4 class="nav_top_align">
							<i class="fa fa-th"></i> Manage Projects
						</h4>
					</div>
					<div class="col-lg-6 col-md-8 col-sm-8">
						<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
							<li class="breadcrumb-item"><a href="index.html"> <i
									class="fa fa-home" data-pack="default" data-tags=""></i>
									Dashboard
							</a></li>
							<li class="breadcrumb-item active">Manage Projects</li>
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
										<i class="fa fa-table"></i> Project Title
									</div>
									<div class="card-block p-t-25" style="padding-top: 0px;">
										<div class="">
											<div class="pull-sm-right">
												<div class="tools pull-sm-right"></div>
											</div>
										</div>
										<f:form modelAttribute="ls" method="get">
											<table class="table table-striped table-bordered table-hover"
												id="sample_1">
												<thead>
													<tr>

														<th>Project Name</th>
														<th>Update</th>
														<th>Delete</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ls}" var="r">



														<tr>


															<td>${r.projectName}</td>
															<td><a
																href="editProject.html?projectId=${r.projectId}">Update</a></td>
															<td><a
																href="deleteProject.html?projectId=${r.projectId}">Delete</a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</f:form>
									</div>
								</div>
								<!-- END EXAMPLE1 TABLE PORTLET-->
								<br>
								<!-- BEGIN EXAMPLE1 TABLE PORTLET-->
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-table"></i> Module Title
									</div>
									<div class="card-block p-t-25" style="padding-top: 0px;">
										<div class="">
											<div class="pull-sm-right">
												<div class="tools pull-sm-right"></div>
											</div>
										</div>
										<f:form modelAttribute="moduleList">
											<table class="table table-striped table-bordered table-hover"
												id="sample_1">
												<thead>
													<tr>

														<th>Module Name</th>
														<th>Update</th>
														<th>Delete</th>

													</tr>
												</thead>
												<tbody>


													<c:forEach items="${sessionScope.ls}" var="r">
														<c:forEach items="${moduleList}" var="j">


															<c:if test="${r.projectId eq j.projectVO.projectId}">

																<tr>


																	<td>${j.moduleName}</td>
																	<td><a
																		href="editModule.html?moduleId=${j.moduleId}">Update</a></td>
																	<td><a
																		href="deleteModule.html?moduleId=${j.moduleId}">Delete</a></td>
																</tr>
															</c:if>
														</c:forEach>
													</c:forEach>
												</tbody>
											</table>
										</f:form>
									</div>
								</div>

								<!-- END EXAMPLE1 TABLE PORTLET-->
								<br>
								<!-- BEGIN EXAMPLE1 TABLE PORTLET-->
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-table"></i> Form Name
									</div>
									<div class="card-block p-t-25" style="padding-top: 0px;">
										<br> <br>

										<f:form modelAttribute="formList">
											<table class="table table-striped table-bordered table-hover"
												id="sample_1">
												<thead>
													<tr>

														<th>Form Name</th>
														<th>Update</th>
														<th>Delete</th>
														<th>Add Field</th>

													</tr>
												</thead>
												<tbody>


													<c:forEach items="${sessionScope.ls}" var="r">
														<c:forEach items="${formList}" var="j">


															<c:if test="${r.projectId eq j.projectVO.projectId}">

																<tr>


																	<td>${j.formName}</td>
																	<td><a href="editForm.html?formId=${j.formId}">Update</a></td>
																	<td><a href="deleteForm.html?formId=${j.formId}">Delete</a></td>
																	<td><a
																		href="addinnerformfield.html?formId=${j.formId}">Add
																			Field</a></td>
																</tr>
															</c:if>
														</c:forEach>
													</c:forEach>
												</tbody>
											</table>
										</f:form>
									</div>
								</div>

								<!-- END EXAMPLE1 TABLE PORTLET-->
								<br>
								<div class="card">
									<div class="card-header bg-white">
										<i class="fa fa-table"></i> Innerform Details
									</div>
									<div class="card-block p-t-25 " style="padding-top: 0px;">
										<div class="">
											<div class="pull-sm-right">
												<div class="tools pull-sm-right"></div>
											</div>
										</div>
										<f:form modelAttribute="innerformList">
											<table class="table table-striped table-bordered table-hover"
												id="sample_1">
												<thead>
													<tr>

														<th>Field Name</th>
														<th>Field Type</th>
														<th>Field Value</th>
														<th>Update</th>
														<th>Delete</th>

													</tr>
												</thead>
												<tbody>


													<c:forEach items="${sessionScope.ls}" var="r">
														<c:forEach items="${innerformList}" var="j">


															<c:if
																test="${r.projectId eq j.formVO.projectVO.projectId}">

																<tr>


																	<td>${j.innerfieldName}</td>
																	<td>${j.fieldVO.fieldName}</td>
																	<td>${j.innerfieldValue}</td>
																	<td><a
																		href="editinnerform.html?innerFormId=${j.innerFormId}">Update</a></td>
																	<td><a
																		href="deleteinnerform.html?innerFormId=${j.innerFormId}">Delete</a></td>
																</tr>
															</c:if>
														</c:forEach>
													</c:forEach>
												</tbody>
											</table>
										</f:form>
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
		<!--wrapper-->

		<!-- # right side -->
	</div>
	<!-- /#wrap -->
	<!-- global scripts-->
	<script type="text/javascript" src="resources/js/components.js"></script>
	<script type="text/javascript" src="resources/js/custom.js"></script>
	<!--end of global scripts-->
	<!--plugin scripts-->
	<script type="text/javascript" src="resources/js/select2.js"></script>
	<!-- <script type="text/javascript"
		src="resources/js/jquery.dataTables.min.js"></script> -->
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
