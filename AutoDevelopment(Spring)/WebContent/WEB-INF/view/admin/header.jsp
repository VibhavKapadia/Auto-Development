<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div id="top">
	<!-- .navbar -->
	<nav class="navbar navbar-static-top">
		<div class="container-fluid">
			<a class="navbar-brand text-xs-center" href="index.html">
				<h4 class="text-white">
					<img src="resources/img/logow.png" class="admin_img" alt="logo">
					Auto Developement
				</h4>
			</a>
			<div class="menu">
				<span class="toggle-left" id="menu-toggle"> <i
					class="fa fa-bars text-white"></i>
				</span>
			</div>

			<!-- Toggle Button -->
			<div class="text-xs-right xs_menu">
				<button class="navbar-toggler hidden-xs-up" type="button"
					data-toggle="collapse" data-target="#nav-content">☰</button>
			</div>
			<!-- Nav Content -->
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="topnav dropdown-menu-right float-xs-right">
				<!-- <div class="btn-group">
					<div class="notifications no-bg">
						<a class="btn btn-default btn-sm messages message_tour"
							data-toggle="dropdown"> <i
							class="fa fa-envelope fa-1x text-white"></i> <span class="bg-warning message_tags">4</span>
							<span class="tag tag-warning">8</span>
						</a>
						<div class="dropdown-menu drop_box_align" role="menu">
							<div class="popover-title">You have 8 Messages</div>
							<div id="messages">
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/5.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>hally</strong> sent you an image. <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/8.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>Meri</strong> invitation for party. <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/7.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>Remo</strong> meeting details . <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/6.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>David</strong> upcoming events list. <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/5.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>hally</strong> sent you an image. <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/mailbox_imgs/8.jpg"
											class="message-img avatar" alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>Meri</strong> invitation for party. <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/7.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>Remo</strong> meeting details . <br> <small>add
											to timeline</small>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/6.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<strong>David</strong> upcoming events list. <br> <small>add
											to timeline</small>
									</div>
								</div>
							</div>
							<div class="popover-footer">
								<a href="mail_inbox.html">Inbox</a>
							</div>
						</div>
					</div>
				</div> -->
				<!-- <div class="btn-group">
					<div class="notifications messages no-bg notification_tour">
						<a class="btn btn-default btn-sm" data-toggle="dropdown"> <i
							class="fa fa-bell text-white"></i> <span class="bg-danger notification_tags">4</span>
							<span class="tag tag-danger">9</span>
						</a>
						<div class="dropdown-menu drop_box_align" role="menu">
							<div class="popover-title">You have 9 Notifications</div>
							<div id="notifications">
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/1.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you
										an image <br> <small class="primary_txt">just
											now.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/2.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>clay</strong> business
										propasals <br> <small class="primary_txt">20min
											Back.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="img/3.jpg" class="message-img avatar" alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>John</strong> meeting at
										Ritz <br> <small class="primary_txt">2hrs Back.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/6.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>Luicy</strong> Request
										Invitation <br> <small class="primary_txt">Yesterday.</small>
										<br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/1.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you
										an image <br> <small class="primary_txt">just
											now.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/2.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>clay</strong> business
										propasals <br> <small class="primary_txt">20min
											Back.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/3.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>John</strong> meeting at
										Ritz <br> <small class="primary_txt">2hrs Back.</small> <br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/6.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>Luicy</strong> Request
										Invitation <br> <small class="primary_txt">Yesterday.</small>
										<br>
									</div>
								</div>
								<div class="data">
									<div class="col-xs-2">
										<img src="resources/img/1.jpg" class="message-img avatar"
											alt="avatar1">
									</div>
									<div class="col-xs-10 message-data">
										<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you
										an image <br> <small class="primary_txt">just
											now.</small> <br>
									</div>
								</div>
							</div>

							<div class="popover-footer">
								<a href="#">View All</a>
							</div>
						</div>
					</div>
				</div>
				<div class="btn-group">
					<a class="btn btn-default btn-sm messages toggle-right"
						id="right-toggle"> &nbsp; <i class="fa fa-cog text-white"></i>
						&nbsp;
					</a>
				</div>
 -->
				<div class="btn-group" style="display: inline-block;">
					<div class="user-settings no-bg">
						<button type="button" class="btn btn-default no-bg micheal_btn"
							data-toggle="dropdown">

							<strong> <%
 	String email = session.getAttribute("email").toString();
 %> <%
 	out.print(email);
 %>
							</strong> <span class="fa fa-sort-down white_bg"></span>
						</button>
						<div class="dropdown-menu admire_admin">
							<a class="dropdown-item" href="changepassword.html"><i
								class="fa fa-lock"></i> Change Password</a> <a class="dropdown-item"
								href="javascript:logout()"><i class="fa fa-sign-out"></i>
								Log Out</a>
						</div>

						<c:url var="logoutUrl" value="/j_spring_security_logout" />
						<form action="${logoutUrl}" method="post" id="form">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<script>
							function logout() {

								document.getElementById("form").submit();

							}
						</script>

					</div>
				</div>
			</div>
			<!-- <div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu"
                     id="nav-content">
                    <ul class="nav navbar-nav top_menubar">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mail_inbox.html">
                                <i class="fa fa-inbox"></i> <span class="quick_text">Inbox</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mail_compose.html">
                                <i class="fa fa fa-edit"></i> <span class="quick_text">Compose</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="maps.html">
                                <i class="fa fa-map-marker"></i> <span class="quick_text">Maps</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="gallery.html">
                                <i class="fa fa-picture-o"></i> <span class="quick_text">Gallery</span>
                            </a>
                        </li>
                    </ul>
                </div> -->
		</div>

		<!-- /.container-fluid -->
	</nav>
	<!-- /.navbar -->
	<!-- /.head -->
</div>