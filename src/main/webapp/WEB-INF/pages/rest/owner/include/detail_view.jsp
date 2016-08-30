<!-- hes -->
<style>
#mydetail span{
	color:#000000 !important;
}
.color{
#color:#000000 !important;
}
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!-- **************likd and share************ -->


<!-- detail -->
<div class="container margintop5">
	<div class="row panel-group">
		<div class="panel panel-info">
			<div class="panel-heading text-center">ព័តមានលំអិតរបស់ភោជនីយដ្ខាន</div>
			<div class="panel-body">
				<div ng-controller="MyAdCtrl" id="mydetail">
					<div ng-repeat="r in restByID" ng-init= "updateRestView(r.id)">

						<div class="col-md-12">
						<div class="col-md-12">
						<div class="col-md-12">
							<div class="row">
								<center>
									<img ng-repeat="image in r.images | limitTo:1"
										style="width: 200px; height: 200px; background: #dddddd;"
										class="fab" src="http://localhost:8888{{image.url}}" alt="" />
								</center>
							</div>
							<div class="row">
								<center>
									<h1 class="name">{{r.name}}</h1>
								</center>
							</div>
							<center>
							<span ng-repeat="rating in ratings" class="color"> <span>Rating
									:{{rating.current}}/{{rating.max}}</span> <span star-rating
								rating-value="rating.current" max="rating.max"
								on-rating-selected="getSelectedRating(rating)"></span>
							</span> 
							</center>
							<br>
							<div class="row">
								<center>
									<button class="fab">
										<span> # </span>{{r.home}}
									</button>
									<button class="fab">St {{r.street}}</button>
									<button class="fab">{{r.commune}}</button>
									<button class="fab">{{r.district}}</button>
									<button class="fab">{{r.province}}</button>
									<button class="fab">ដឹកជញ្ជូន : {{r.delivery}}</button>
								</center>
							</div>

							<div class="col-md-12">
								<span ng-repeat="t in r.tel">{{t.tel}} | </span>
							</div>
							<hr>
							<div>
								<strong>Descroption: </strong>{{r.desc}}
									<hr>
							</div>
							<div class="row">
							<div class="panel panel-group">
							<div class="panel-info">
							<div class="panel-heading">មីនុយ</div>
							<div class="panel-body">
									<section>
					<div class="col-md-2" ng-repeat="image in r.images">
						<a class="example-image-link img-responsive"
							href="http://localhost:8888{{image.url}}"
							data-lightbox="example-set"> <img
							class="img-responsive img-thumbnail example-image"
							src="http://localhost:8888{{image.url}}" alt="" />
						</a>
					</div>
				</section>
				</div>
				</div>
				</div>
							</div>
							
								</div>
				</div>
							<div class="col-md-12">
								<div class="col-md-12">
								<br>
										<a href="/locations/{{r.id}}" id="map">
											<span id="viewMap" class="btn btn-default btn-sm">Visit Map &nbsp<span class="glyphicon glyphicon-map-marker"></span></span>
										</a>
									<span class="btn btn-default btn-sm" ng-click="addtoFaorite(r.id)">Add to favorite &nbsp
										<span class="glyphicon glyphicon-bookmark"></span>
									</span>
									&nbsp&nbsp	<i class="glyphicon glyphicon-eye-open"></i>&nbsp{{r.views}}
											<hr>
										<!-- *****LIKEand Share****** -->
								
							<iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fkplous%2F&width=450&layout=standard&action=like&size=small&show_faces=false&share=true&height=35&appId=1489855064642155" width="450" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" margin-top="5px"></iframe>
							
								<hr>
						
						
								
								<!-- *********Comment************ -->
								<div>
								<div class="fb-comments" data-href="https://www.facebook.com/kplous/" data-width="100%" data-numposts="1"></div>
								</div>
								</div>
							</div>
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

