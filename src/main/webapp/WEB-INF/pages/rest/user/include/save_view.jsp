 <!-- ADD To FAvorite -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- detail -->
<div class="container margintop5">
	<div class="row panel-group">
		<div class="panel panel-info">
			<div class="panel-heading text-center">ព័តមានលំអិតរបស់ភោជនីយដ្ខានដែលបានរក្សាទុក</div>
			<div class="panel-body">
				<div ng-controller="addToFavoriteCtrl">
					<div class="row" ng-repeat="r in addToFavorite">
						<div class="col-md-3">
									<img ng-repeat="image in r.images | limitTo:1"
										style="width: 200px; height: 200px; background: #dddddd;"
										class="fab" src="http://localhost:8888{{image.url}}" alt="" />
							</div>
							<div class="col-md-9">
							<a href="/detail/{{r.id}}">
									<h1>{{r.name}}</h1>
									<p> {{r.desc}}</p>
									<p>
									<span> #{{r.home}} </span>
								
									<span>St {{r.street}}</span>
									<span>{{r.commune}}</span>
									<span>{{r.district}}</span>
									<span class="fab">{{r.province}}</span>
									<span class="fab">ដឹកជញ្ជូន : {{r.delivery}}</span>
								</p>
								</a>
							<p>
								<span ng-repeat="t in r.tel">{{t.tel}} | </span>
							<p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /container -->


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owner/lightbox.css">

<script
	src="${pageContext.request.contextPath}/resources/script/owner/lightbox-plus-jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/script/owner/photo-gallery.js"
	type="text/javascript"></script>

<script
	src="${pageContext.request.contextPath}/resources/script/owner/lightbox.js"></script>

<script>
		rest_id = "${id}";
		
</script>
