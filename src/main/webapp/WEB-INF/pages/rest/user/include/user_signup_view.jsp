	
	<style>
	.omb_login .omb_loginForm .input-group.i {
    width: 2em;
}
.omb_login .omb_loginForm  .help-block {
    color: red;
}

h2 { color:#333; }
.btn-primary { background-color:#0077c8; }
.first-time h2 { margin-top:0; }
.first-time { border-bottom: 1px solid #ccc; }
.tips *, .first-time * { text-align:center; }
    
@media (min-width: 768px) {
    .omb_login .omb_forgotPwd {
        text-align: right;
        margin-top:10px;
    }
    .first-time {
        border-bottom:0;
    }
    .tips {
        border-left: 1px solid #ccc;
    }
    .first-time h2, .first-time p {
        text-align:center;
    }
    .tips h2, .tips p {
        text-align:center;
    }
    .tips h2 {
        margin-top:0;
    }
}
	</style>
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=1489855064642155";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container" >
<div class="panel panel-info">
  <div class="panel-heading">  <h1>ចុះឈ្មោះជាមួយ Fresh Menu</h1></div>
   <div class="panel-body">
    <div class="omb_login">

        <div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-md-offset-1" >
        			<div class="col-md-12" style="border:solid 1px #dddddd;border-radius:5px;">
				  <div class="panel-heading" style="text-align:center">ចុះឈ្មោះដោយប្រើប្រាស់អ៊ីមែលរបស់អ្នក</div>
				<hr>
			    <form class="omb_loginForm" action="" autocomplete="off" method="POST">
			    <div>
			    <label for="email" class="cols-sm-2 control-label">ឈ្មោះ</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" class="form-control" name="name" maxlength="20" placeholder="Username">
					</div>
				</div>
					<span class="help-block"></span>
					<div>				
					<label for="email" class="cols-sm-2 control-label">អីមែល</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
						<input  type="password" class="form-control" name="newpin" maxlength="6" id="pin_id" placeholder="Enter your e-mail address">
					</div> 
					</div>
					   <span class="help-block"></span>
					   	<div>				
					<label for="email" class="cols-sm-2 control-label">លេខសំងាត់</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input  type="password" class="form-control" name="newpin" maxlength="6" id="pin_id" placeholder="Enter your e-mail address">
					</div> 
					</div>
					   <span class="help-block"></span>
					   
					   	<div>				
						<label for="email" class="cols-sm-2 control-label">ភេទ</label>
						
						<select class="form-control" ng-model="gender">
						<div class="input-group">
							<option value="" selected >Gender</option>
							<option value="ប្រុស">ប្រុស</option>
							<option value="ស្រី">ស្រី</option>
								</div> 
						</select>
					
					</div>
					   <span class="help-block"></span>
					   
					   	<div>				
					<label for="email" class="cols-sm-2 control-label">អីមែល</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
						<input  type="password" class="form-control" name="newpin" maxlength="6" id="pin_id" placeholder="Enter your e-mail address">
					</div> 
					</div>
					   <span class="help-block"></span>
					   
					   	<div>				
					<label for="email" class="cols-sm-2 control-label">លេខទូរស័ព្ទ</label>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
						<input  type="password" class="form-control" name="newpin" maxlength="6" id="pin_id" placeholder="Enter your e-mail address">
					</div> 
					</div>
					   <span class="help-block"></span>
					   
					   
					   
					   	<div ng-controller="adminCtrl">				
					<label for="email" class="cols-sm-2 control-label">អាស័យដ្ឋាន</label>
					

						  <select class="form-control"
											name="provinceforsearch" id="provinceforsearch" ng-model="provinceforsearch"
											ng-change="getDistrict(provinceforsearch)"
											ng-options="p as p.khmer_name for p in myProvince track by p.id">
<div class="input-group" >
											<option value="" style="display: none"> City or Province </option>
</div> 
										</select> 
					
					</div>
					<p></p><a href="/" class="btn btn-lg btn-primary btn-block" type="submit">Register</a></p>
					<p>Already have an account</p>
					<p><a href="/login" class="btn btn-lg btn-default btn-block">Login</a></p>
				</form>
		</div>
			</div>
			<div class="col-xs-12 col-sm-5 col-md-5">
				<div class="col-md-12" style="border:solid 1px #dddddd; border-radius:5px;">
  				<div class="panel-heading" style="text-align:center">ចុះឈ្មោះជាមួយបណ្តាញសង្គម Facebook</div>
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