<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div id="left">
	<div class="media user-media bg-dark dker">
		<div class="user-media-toggleHover">
			<span class="fa fa-user"></span>
		</div>

		<div class="user-wrapper bg-dark">
			<br>
			<h4 class="text-white">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome
				<%
					String fn = session.getAttribute("firstNameindex").toString();
					out.print(" " + fn);
				%>
			</h4>
			<br>
			<!-- <div class="search_bar col-lg-12">
				<div class="input-group">
					<input type="search" class="form-control" placeholder="search">
					<span class="input-group-btn">
						<button class="btn without_border" type="button">
							<span class="fa fa-search"> </span>
						</button>
					</span>
				</div>
			</div> -->
		</div>
	</div>
	<!-- #menu -->
	<ul id="menu" class="bg-blue dker">

		<li></li>
		<li><a href="user.html"> <i class="fa fa-home"></i> <span
				class="link-title">&nbsp;Dashboard</span>
		</a></li>
		<!-- <li><a href="javascript:;"> <i class="fa fa-anchor"></i> <span
				class="link-title">&nbsp; Country</span> <span class="fa arrow"></span>
		</a>
			<ul>
				<li><a href="addCountry.html"> <i class="fa fa-angle-right"></i>
						&nbsp; Add Country
				</a></li>
				<li><a href="searchCountry.html"> <i
						class="fa fa-angle-right"></i> &nbsp; Manage Country
				</a></li>

			</ul></li>
		<li><a href="javascript:;"> <i class="fa fa-th-large"></i> <span
				class="link-title">&nbsp; State</span> <span class="fa arrow"></span>
		</a>
			<ul>

				<li><a href="addState.html"> <i class="fa fa-angle-right"></i>
						&nbsp; Add State
				</a></li>
				<li><a href="searchState.html"> <i
						class="fa fa-angle-right"></i> &nbsp; Manage State
				</a></li>
			</ul></li>
		<li><a href="javascript:;"> <i class="fa fa-th-large"></i> <span
				class="link-title">&nbsp; City</span> <span class="fa arrow"></span>
		</a>
			<ul>

				<li><a href="addCity.html"> <i class="fa fa-angle-right"></i>
						&nbsp; Add City
				</a></li>
				<li><a href="searchCity.html"> <i class="fa fa-angle-right"></i>
						&nbsp; Manage City
				</a></li>
			</ul></li>
		<li><a href="javascript:;"> <i class="fa fa-th-large"></i> <span
				class="link-title">&nbsp; Field</span> <span class="fa arrow"></span>
		</a>
			<ul>

				<li><a href="addField.html"> <i class="fa fa-angle-right"></i>
						&nbsp; Add Field
				</a></li>
				<li><a href="searchField.html"> <i
						class="fa fa-angle-right"></i> &nbsp; Manage Field
				</a></li>
			</ul></li>
		<li><a href="reg.html"> <i class="fa fa-picture-o"> </i>
				&nbsp; Registration
		</a></li>
		<li><a href="searchReg.html"> <i class="fa fa-picture-o">
			</i> &nbsp; Manage Users
		</a></li>
 -->
		<li><a href="addProject.html"> &nbsp; Add Project </a></li>

		<li><a href="addModule.html"> &nbsp; Add Module </a></li>
		<!-- <li><a href="searchModule.html"> <i class="fa fa-picture-o">
			</i> &nbsp; Manage Module
		</a></li> -->
		<li><a href="addForm.html"> &nbsp; Add Form </a></li>
		<li><a href="codeGen.html"> &nbsp; Generate Source Code </a></li>
		<li><a href="searchProject.html"> &nbsp; Manage Project </a></li>
		<li><a href="addComplaint.html"> &nbsp; Add Complaint </a></li>
		<!-- <li><a href="viewComplaint.html"> &nbsp; View Complaint </a></li> -->
		<li><a href="addFeedback.html"> &nbsp; Add Feedback </a></li>
		<!-- <li><a href="searchComplaint.html"> <i
				class="fa fa-picture-o"> </i> &nbsp; View Complaint
		</a></li>
		<li><a href="searchFeedback.html"> <i class="fa fa-picture-o">
			</i> &nbsp; View Feedback
		</a></li> -->


	</ul>
	<!-- /#menu -->
</div>