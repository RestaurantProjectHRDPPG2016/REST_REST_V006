<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar" id="nav" style="background:rgb(85, 174, 221);">
  <div class="container-fluid">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" ng-controller="addToFavoriteCtrl">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="/"><span class="glyphicon glyphicon-home"></span> ទំព័រដើម</a></li>
        <li><a href="/about"><span class=" glyphicon glyphicon-user"></span> អំពីយើង</a></li>
        <li><a href="/contact_owner"><span class=" glyphicon glyphicon-earphone"></span> ទំនាក់ទំនង</a></li>
       <sec:authorize access="!isAuthenticated()">
        <li><a href="/signup"><span class="glyphicon glyphicon-user"></span> ចុះឈ្មោះ</a></li>
             </sec:authorize>
          <sec:authorize access="!isAuthenticated()">
        <li><a href="/login" ng-click="getResgister()"><span class="glyphicon glyphicon-log-in"></span> ចូលប្រើ</a></li>
     </sec:authorize>
       <sec:authorize access="isAuthenticated()">
						<li class="dropdown">
						<a class="dropdown-toggle"
							data-toggle="dropdown"> 
							<i class="fa fa-user"></i> 
							<sec:authentication property="principal.name" />
							 <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" id="profile">
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>&nbspProfile</a></li>
							<%-- 	<sec:authentication property="principal.userid" /> --%>
							<%-- 	<li><a href="/user/<sec:authentication property="principal.userid" />" ng-click="getRestaurantByAddToFavorite(<sec:authentication property="principal.userid" />)")><i class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li> --%>
									 <li><a ng-click="getRestaurantByAddToFavorite(<sec:authentication property='principal.userid'/> )"><i class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li>
								<!-- <li><a ng-click="getRestaurantByAddToFavorite()"><i class="fa fa-bookmark" aria-hidden="true"></i>&nbspSaved</a></li> -->
								<li style="cursor: pointer"><a href="/logout"><span
										class="glyphicon glyphicon-log-out"></span>&nbspចាកចេញ</a></li>
							</ul>
					</li>
					</sec:authorize>
	</ul>
    </div>
  </div>
  </div>
</nav>
<!-- if not login (isLogin=="false") -->
<sec:authorize access="isAuthenticated()" var="isLogin"/>
	<script>
		var isLogin='${isLogin}';
		$(".dropdown").click(function(){
			$("#profile").toggle();
		})
	</script>