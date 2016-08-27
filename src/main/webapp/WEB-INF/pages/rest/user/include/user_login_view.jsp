<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=1489855064642155";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="container">
<div class="panel panel-info" style="margin-bottom:10px;">
  <div class="panel-heading">ចូលប្រើប្រាស់ជាមួយគណនី​​ Fresh Menu</div>
   <div class="panel-body">
    <div class="omb_login">
		<div class="row omb_row-sm-offset-2 col-md-offset-2">
			<div class="col-xs-12 col-sm-12 col-md-5">	
			<div class="col-md-12" style="border:solid 1px #dddddd; border-radius:5px; margin-bottom:10px;">
			<div class="panel-heading" style="text-align:center">ចូលប្រើប្រាស់ជាមួយគណនីKhmer Academy</div>
			<hr>
			    <form class="omb_loginForm" autocomplete="off" method="POST">
				<div>
				<label clsaa="col-md-2">អីមែល</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" class="form-control" name="email" placeholder="email address">
					</div>
				</div>
					<span class="help-block"></span>
				<div>
				<label clsaa="col-md-2">លេខសំងាត់</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input  type="password" class="form-control" name="password" placeholder="Password">
					</div>
					</div>
					<br>
                   <!--  <span class="help-block">Password error</span> -->

					<button class="btn btn-sm btn-primary btn-block" type="submit">Login</button>
				<p>Don't have an account yet</p>
					<p><a href="/signup" class="btn btn-sm btn-primary btn-block">Signup</a></p>

				</form>
			</div>
			</div>
		
				<div class="col-xs-12 col-sm-5 col-md-4 col-md-offset-1">
				<div class="col-md-12" style="border:solid 1px #dddddd; border-radius:5px;">
  				<div class="panel-heading" style="text-align:center">ចូលប្រើជាមួយបណ្តាញសង្គម</div>
  					<hr>
  				<div class="panel-body">
  				<center>
    		<div class="fb-login-button " data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div>
    			</center>
    			</div>
    			</div>
    			</div>
			
    	</div>
    	</div>
</div>
</div>
 </div>
 
