<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		Integer a = (Integer) session.getAttribute("fadeinfadeoutdeleteprojectcount");
		if (a != 0) {
	%>

	<div id="toast-container" class="toast-top-right">
		<div class="toast toast-success" aria-live="polite"
			style="display: block;">
			<div class="toast-title">
				<span>Successful!</span>
				<h5 class="text-white"></h5>
			</div>
			<div class="toast-message">Project Deleted!</div>
		</div>
	</div>

	<%
		}

		session.setAttribute("fadeinfadeoutdeleteprojectcount", 0);
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
						<h4 class="nav_top_align">Manage Projects</h4>
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
										<i class="fa fa-table"></i> Manage Projects
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

														<th>Project Name</th>
														<th>Project Modules</th>
														<th>Project Forms</th>
														<th>Manage</th>


													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ls}" var="r">



														<tr>


															<td>${r.projectName}</td>
															<%
																int i = 0;
															%>
															<td><c:forEach items="${moduleList}" var="j">
																	<c:if test="${r.projectId eq j.projectVO.projectId}">
																		<%
																			i++;
																							if (i >= 2) {
																		%>
																		
																	
																     , ${j.moduleName}
																		<%
																			}

																							else {
																		%>${j.moduleName}
																		<%
																			}
																		%>

																	</c:if>
																</c:forEach></td>
															<%
																int j = 0;
															%>
															<td><c:forEach items="${formList}" var="x">

																	<c:if test="${r.projectId eq x.projectVO.projectId}">
																		<%
																			j++;
																							if (j >= 2) {
																		%>
																		
																	
																      , ${x.formName}
																		<%
																			}

																							else {
																		%>
																		${x.formName}
																		<%
																			}
																		%>

																	</c:if>
																</c:forEach></td>

															<td><a
																href="manageProject.html?projectId=${r.projectId }">Manage</a>
																<%-- <a href="javascript:logout()">Manage</a> <c:url
																	var="mp" value="manageProject.html" />
																<form action="${mp}" method="post" id="manage">
																	<input type="hidden" name="projectId" id="projectId"
																		value="${r.projectId}" />
																</form> <script>
																	function logout() {

																		var projectId = document
																				.getElementById("projectId").value;
																		alert(projectId);
																		document
																				.getElementById(
																						"manage")
																				.submit();

																	}
																</script> --%></td>
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

	</div>
	<%-- 	<a href="manageProject.html?projectId=${r.projectId }">Manage</a> --%>
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
