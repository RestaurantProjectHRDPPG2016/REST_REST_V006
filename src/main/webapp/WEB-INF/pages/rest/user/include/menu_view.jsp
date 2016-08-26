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
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right" ng-controller="logoutCtrl">
   <sec:authorize access="isAuthenticated()">
  	 <div id="mydiv"></div>
   	<li><a href="/user/<sec:authentication property="principal"/>"><sec:authentication property="principal.username"/></a></li>
   		
    			<script>
		var user_id='<sec:authentication property="principal.userid"/>';
	</script>
	</sec:authorize>

        <li class="active"><a href="/"><span class="glyphicon glyphicon-home"></span> ទំព័រដើម</a></li>
        <li><a href="/about"><span class=" glyphicon glyphicon-user"></span> អំពីយើង</a></li>
        <li><a href="/contact_owner"><span class=" glyphicon glyphicon-earphone"></span> ទំនាក់ទំនង</a></li>
        <li><a href="/signup"><span class="glyphicon glyphicon-user"></span> ចុះឈ្មោះ</a></li>
        <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> ចូលប្រើ</a></li>
         <sec:authorize access="isAuthenticated()">
   		<li style="cursor:pointer"><a ng-click="logout()"><span class="glyphicon glyphicon-log-out"></span> ចាកចេញ</a></li>
	</sec:authorize>
	</ul>
    </div>
  </div>
  </div>
</nav>