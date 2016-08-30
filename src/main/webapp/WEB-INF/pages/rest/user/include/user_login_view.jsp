
<style>
panel
 
with-nav-tabs
</style>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=1489855064642155";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<div class="container">
	<div class="panel panel-info" style="margin-bottom: 10px;">
		<div class="panel-heading">ចូលប្រើប្រាស់ជាមួយគណនី​​ Fresh Menu</div>
		<div class="panel-body">
			<div class="omb_login">


				<!-- 	 <div class="page-header">
        <h1></h1>
    </div> -->
				<div class="row">
					<div class="col-md-12">
						<div class="panel with-nav-tabs panel-primary">
							<div class="panel-heading">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab1primary"
										data-toggle="tab">ចូលប្រើប្រាស់ជាមួយគណនី​​ Fresh Menu</a></li>
									<li><a href="#tab2default" data-toggle="tab">ចូលប្រើជាមួយបណ្តាញសង្គម
											Facebook</a></li>
								</ul>
							</div>
							<div class="panel-body">
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1primary">
										<div class="col-xs-12 col-sm-12 col-md-5 col-md-offset-3">
											<div class="col-md-12"
												style="border: solid 1px #dddddd; border-radius: 5px; margin-bottom: 10px;">
												<div class="panel-heading" style="text-align: center">ចូលប្រើប្រាស់ជាមួយគណនីKhmer
													Academy</div>
												<hr>
												<form class="omb_loginForm" autocomplete="off" method="POST">
													<div>
														<label clsaa="col-md-2">អីមែល</label>
														<div class="input-group">
															<span class="input-group-addon"><i
																class="fa fa-user"></i></span> <input type="text"
																class="form-control" name="email"
																placeholder="email address">
														</div>
													</div>
													<span class="help-block"></span>
													<div>
														<label clsaa="col-md-2">លេខសំងាត់</label>
														<div class="input-group">
															<span class="input-group-addon"><i
																class="fa fa-lock"></i></span> <input type="password"
																class="form-control" name="password"
																placeholder="Password">
														</div>
													</div>
													<br> <span class="help-block" style="display: none">Password
														error</span>

													<button class="btn btn-sm btn-primary btn-block"
														type="submit">Login</button>
													<p>Don't have an account yet</p>
													<p>
														<a href="/signup" class="btn btn-sm btn-primary btn-block">Signup</a>
													</p>

												</form>
											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="tab2default">
										<div class="col-xs-12 col-sm-12 col-md-5 col-md-offset-3">
											<div class="col-md-12"
												style="border: solid 1px #dddddd; border-radius: 5px; margin-bottom: 10px;">
												<div class="panel-heading" style="text-align: center">ចូលប្រើជាមួយបណ្តាញសង្គម
													Facebook</div>
												<hr>
												<center>
													<div class="fb-login-button " data-max-rows="1"
														data-size="large" data-show-faces="false"
														data-auto-logout-link="false"></div>
												</center>
												<p>&nbsp</p>
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
	</div>
</div>
<!-- 
<script type="text/javascript">
var app = angular.module('myApp', []);
	app.controller('navCtrl', function($scope) {
		$scope.isActive = function(path) {
			if (contextPath.indexOf(path) > 0) {

				return true;
			} else {

				return false;
			}

		}
	});
	</script> -->

