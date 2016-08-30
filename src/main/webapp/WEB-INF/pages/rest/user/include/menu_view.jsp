
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<input type="hidden" id="path"
	value="${pageContext.request.contextPath}" />
<script type="text/javascript">
	var contextPath = location.href;
</script>
<!-- Navigation -->
<nav class="navbar navbar-dark bg-primary" role="navigation"
	 ng-controller="navCtrl">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/home"><strong style="color:#ffffff;">Fresh Menu</strong></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li ng-class="isActive('/home')?'active':'inactive'"><a
					href="/home"><span class="glyphicon glyphicon-home"></span>
						ទំព័រដើម</a></li>
				<li ng-class="isActive('/about')?'active':'inactive'"><a
					href="/about"><span class=" glyphicon glyphicon-user"></span>
						អំពីយើង</a></li>
				<li ng-class="isActive('/contact_owner')?'active':'inactive'"><a
					href="/contact_owner"><span
						class=" glyphicon glyphicon-earphone"></span> ទំនាក់ទំនង</a></li>
				<sec:authorize access="!isAuthenticated()">
					<li ng-class="isActive('/signup')?'active':'inactive'"><a
						href="/signup"><span class="glyphicon glyphicon-user"></span>
							ចុះឈ្មោះ</a></li>
				</sec:authorize>
				<sec:authorize access="!isAuthenticated()">
					<li ng-class="isActive('login')?'active':'inactive'"><a
						href="/login" ng-click="getResgister()"><span
							class="glyphicon glyphicon-log-in"></span> ចូលប្រើ</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">

					<li class="dropdown" ng-controller="addToFavoriteCtrl"
						id="myprofile"><a class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fa fa-user"></i> <span><sec:authentication
									property="principal.name" /></span> <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" id="profile">
							<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>&nbspProfile</a></li>
							<%-- 	<sec:authentication property="principal.userid" /> --%>
							<li><a
								href="/user/<sec:authentication property="principal.userid" />"
								ng-click="getRestaurantByAddToFavorite(<sec:authentication property='principal.userid'/>)"><i
									class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li>
							<%--  <li><a ng-click="getRestaurantByAddToFavorite(<sec:authentication property='principal.userid'/> )"><i class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li> --%>
							<!-- <li><a ng-click="getRestaurantByAddToFavorite()"><i class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li> -->
							<li style="cursor: pointer"><a href="/logout"><span
									class="glyphicon glyphicon-log-out"></span>&nbspចាកចេញ</a></li>
						</ul></li>

					<script>
						var userId = "<sec:authentication property='principal.userid'/>";
					</script>
				</sec:authorize>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
<!-- if not login (isLogin=="false") -->
<sec:authorize access="isAuthenticated()" var="isLogin" />
<script>
	var isLogin = '${isLogin}';
	$(".dropdown").click(function() {
		$("#profile").toggle();
	})
</script>