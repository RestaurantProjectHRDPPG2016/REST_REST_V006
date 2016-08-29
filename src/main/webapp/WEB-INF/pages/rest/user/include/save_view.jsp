
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div class="container margintop5" ng-controller="addToFavoriteCtrl"> 
	<div class="row panel-group">
	<div class="panel panel-info">
	<div class="panel-heading">ភោជនីយដ្ឋានដែលលោកអ្នកបានរក្សាទុក</div>
	<div class="panel-body">
		<div ng-repeat="m in myaddToFavorite">
		<div class="col-md-6">
		<div class="col-md-12"  style="border:solid 1px #dddddd; margin:10px; padding:5px;">
 			<div class="col-md-5">
									<img ng-repeat="image in m.images | limitTo:1"
									class="img-thumbnail img-responsive" src="http://localhost:8888{{image.url}}" alt="" />
				</div> 
							 <div class="col-md-7">
							 <a href="/detail/{{m.id}}">
									<p style="white-space: nowrap;width: 100%;overflow: hidden;text-overflow: ellipsis;">{{m.name}}</p>
									{{m.home}}
								St {{m.street}}
									{{m.commune}}
									{{m.district}}
									{{m.province}}
							ដឹកជញ្ជូន : {{m.delivery}}
						</a>
								<span ng-repeat="t in m.tel">{{t.tel}}</span>
						</div> 
						<p>&nbsp</p>
						<button class="btn btn-default btn-sm" ng-click="deleteAddToFavorite(m.id)">Unsave <span class="glyphicon glyphicon-remove"></span></button>
			</div>
			</div>
		</div>
		</div>
		</div>
		</div>
	</div>
<script>
		user_id = "${id}";
</script>  