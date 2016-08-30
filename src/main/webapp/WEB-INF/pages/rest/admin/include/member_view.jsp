<%@include file="header_view.jsp" %>
<%-- <%@include file="menu_top_view.jsp" %> --%>
<%@include file="menu_right_view.jsp" %>

        <div id="page-wrapper" ng-controller="userCtrl">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           	Members
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Members
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
				<div class="col-md-12">
					<button class="btn btn-primary" id="myadmin">Admin</button>
					<button class="btn btn-primary" id="myuser">User</button>

		</div>

                <div class="row">
                      <div class="col-lg-6">
                        <h2>Total Number of members</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Admin</th>
                                        <th>Normal Member</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{{myadmin.length}}</td>
                                        <td>{{myUser.length}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
               
                    <div class="col-lg-12 display-none" id="admin">
                        <h2>Administrator information</h2>
                        <button class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Add New Administrator</button>
										
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Email</th>
                                        <th>Password</th>
                                        <th>address</th>
                                        <th>action</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                        <tr  ng-repeat="admin in myadmin">
                                        <th>{{ $index+1 }}</th>
                                        <th>{{admin.username}}</th>
                                        <th>{{admin.gender}}</th>
                                        <th>{{admin.email}}</th>
                                        <th>{{admin.password}}</th>
                                        <th>{{admin.address}}</th>
										<th>
											<button class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></button>
											<button class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></button>
											</th>
										</tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <div class="col-lg-12 display-none" id="user">
                        <h2>User information</h2>
                        <button class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Add User</button>
									
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Email</th>
                                        <th>Password</th>
                                        <th>address</th>
                                        <th>action</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                        <tr  ng-repeat="user in myUser">
                                        <th>{{ $index+1 }}</th>
                                        <th>{{user.username}}</th>
                                        <th>{{user.gender}}</th>
                                        <th>{{user.email}}</th>
                                        <th>{{user.password}}</th>
                                        <th>{{user.address}}</th>
										<th>
											<button class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></button>
											<button class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></button>
												</th>
										</tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
        <!-- /#page-wrapper -->
           </div>
    <!-- /#wrapper -->
<%@include file="footer_view.jsp" %>