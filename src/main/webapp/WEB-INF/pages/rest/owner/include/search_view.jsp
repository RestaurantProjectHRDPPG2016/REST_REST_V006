
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container margintop5" ng-controller="restCtrl">
<div class="row panel-group">
	<div class="panel panel-info">
	<div class="panel-heading">លទ្ធផលបានស្វែងរក</div>
	<div class="panel-body">
		<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"
			ng-repeat="r in rest">
			<div class="col-md-12" style="border:solid 1px #dddddd;padding:5px; margin:5px; border-radius:5px;">
			<div class="col-md-4">
			 <a href="/detail/{{r.id}}">
				<span ng-repeat="img in r.images | limitTo: 1"> <img
							class="img-responsive img-thumbnail" style="width: 100px; height: 100px; margin:2px 0px;"
							src="http://localhost:8888{{img.url}}" />
						</span>
			</a> 
		</div>
		<div class="col-md-8">
			<a href="/detail/{{r.id}}">
					<b style="white-space: nowrap;width: 100%;overflow: hidden;text-overflow: ellipsis;">{{r.name}}
			</p>
					
					 <!-- <div><span  style="font-size:20px; font-weight: bolder;">{{cat.name}}</span></div> -->
						<div>
							{{r.home}} St
								{{cat.street}} {{r.commune}}
						</div>
						<div>
							{{r.district}}
								{{cat.city}}
						</div> <!-- <div><span style="font-size:13px;">Knowing that items is a JSON container received through a request, so that's why I'm using a key, value method.{{r.city}}</span></div> -->
						<div ng-repeat="tele in cat.tel | limitTo:1">
							Tel: {{tele.tel}}
						</div>
					</a>
					<div style="margin-bottom: 10px;">
					</div>
				</div>
			</div>
		</div>
		<!-- ************************ -->
				<!-- No Result -->
				<div class="col-md-12" id="notfound" style="display:none;">
				<img class="img-responsive" src="${pageContext.request.contextPath}/resources/upload/playlist/img/no-result.png"/>
				</div>
		</div>
	</div>
	</div>
	<div id="paginationRest"></div>
</div>

<script>
category ="${category}";
province ="${province}";
district ="${district}";
commune ="${commune}";
name = "${name}";

</script> 
<!-- 
sdfasdf -->