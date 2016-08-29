<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container margintop5">
<div class="row panel-group">
	<div class="panel panel-info">
	<div class="panel-heading">ភោជនីយដ្ឋានដែលនៅជិតលោកអ្នកបំផុត</div>
	<div class="panel-body">
	<!-- ***************************** -->
	<div class="panel=body" ng-controller="MyCatCtrl">
		<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"
			ng-repeat="cat in MyCategories">
			<div class="col-md-12"  style="border:solid 1px #dddddd; 
		padding:5px; margin-top:5px; margin-bottom:5px;">
			<a href="/detail/{{cat.id}}">
				<div class="col-md-4" style="margin-top: 5px;">
					<div style="float: left; width: 200px; height: auto;">
						<span ng-repeat="img in cat.images | limitTo: 1"> <img
							class="img-responsive img-thumbnail" style="width: 100px; height: 100px;"
							src="http://localhost:8888{{img.url}}" />
						</span>
					</div>
				</div>
			</a>

			<div class="col-md-8">
				<div>
				<a href="/detail/{{cat.id}}">
						<p style="white-space: nowrap;width: 100%;overflow: hidden;text-overflow: ellipsis;">
					<span style="font-size: 14px; font-weight: bolder;">{{cat.name}}</span>
					</p>
				</div>
				<div>
					
						<div>
							<span style="font-size: 13px;">{{cat.home}} St
								{{cat.street}} {{cat.commune}}</span>
						</div>
						<div>
							<span style="font-size: 13px;">{{cat.district}}
								{{cat.city}}</span>
						</div> <!-- <div><span style="font-size:13px;">Knowing that items is a JSON container received through a request, so that's why I'm using a key, value method.{{r.city}}</span></div> -->
						<div ng-repeat="tele in cat.tel | limitTo:1">
							<span style="font-size: 13px;">Tel: {{tele.tel}}</span>
						</div>
					</a>
						
							<span ng-repeat="rating in ratings"> 
							 <span star-rating
								rating-value="rating.current" max="rating.max"
								on-rating-selected="getSelectedRating(rating)"></span>
							</span> 
				
					<div style="margin-bottom: 10px;">
					</div>
				</div>
				</div>
				</div>
				</div>
								<!-- No Result -->
				<div class="col-md-12" id="notfound" style="display:none;">
				<img class="img-responsive" src="${pageContext.request.contextPath}/resources/upload/playlist/img/no-result.png"/>
				</div>
				</div>
				<!-- ************************ -->
				<!-- ByType of Restaurant -->
				
				<div class="panel=body" ng-controller="MyTypeCtrl">
		<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"
			ng-repeat="ty in MyRestType">
			<div class="col-md-12"  style="border:solid 1px #dddddd; 
		padding:5px; margin-top:5px; margin-bottom:5px;">
			<a href="/detail/{{ty.id}}">
				<div class="col-md-4" style="margin-top: 5px;">
					<div style="float: left; width: 200px; height: auto;">
						<span ng-repeat="img in ty.images | limitTo: 1"> <img
							class="img-responsive img-thumbnail" style="width: 100px; height: 100px;"
							src="http://localhost:8888{{img.url}}" />
						</span>
					</div>
				</div>
			</a>

			<div class="col-md-8">
				<div>
				<a href="/detail/{{ty.id}}">
						<p style="white-space: nowrap;width: 100%;overflow: hidden;text-overflow: ellipsis;">
					<span style="font-size: 14px; font-weight: bolder;">{{ty.name}}</span>
					</p>
				</div>
				<div>
					
						<div>
							<span style="font-size: 13px;">{{ty.home}} St
								{{ty.street}} {{ty.commune}}</span>
						</div>
						<div>
							<span style="font-size: 13px;">{{cat.district}}
								{{ty.city}}</span>
						</div> <!-- <div><span style="font-size:13px;">Knowing that items is a JSON container received through a request, so that's why I'm using a key, value method.{{r.city}}</span></div> -->
						<div ng-repeat="tele in cat.tel | limitTo:1">
							<span style="font-size: 13px;">Tel: {{tele.tel}}</span>
						</div>
					</a>
					
							<span ng-repeat="rating in ratings"> <span star-rating
								rating-value="rating.current" max="rating.max"
								on-rating-selected="getSelectedRating(rating)"></span>
							</span> 
			
					<div style="margin-bottom: 10px;">
					</div>
				</div>
				</div>
				</div>
				</div>
				
								<!-- No Result -->
				<div class="col-md-12" id="notfound" style="display:none;">
				<img class="img-responsive" src="${pageContext.request.contextPath}/resources/upload/playlist/img/no-result.png"/>
				</div>
				</div>
				<!-- ************************ -->

				
				
				</div>
				</div>
			</div>
	<div id="paginationbyCategory"></div>
</div>


<script>
	cat_id = "${id}";
	type_id = "${type_id}";
</script>
<!-- HEo -->
