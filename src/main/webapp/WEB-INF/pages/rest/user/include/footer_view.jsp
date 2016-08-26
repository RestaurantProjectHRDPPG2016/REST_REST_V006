<style>
	.myfooter a{
		font-size: 20px;
	}
	.myfooter a:hover{
		font-size: 22px;
		text-decoration:underline;
		color: blue;
	}
	
</style>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer>
<!-- footer vies_jsp -->
    <div class="footer" id="footer">
        <div class="container">
            <div class="row myfooter">
                <div class="col-lg-6  col-md-6 col-sm-6 col-xs-12">
                    <h3> Fresh Menu</h3>
			    		<p><span  class="glyphicon glyphicon-ok"></span>	Fresh Menu ត្រូវ​បាន​បង្កើត​ឡើង​តាំង​ពី​ខែ​មិថុនា​ 01, ឆ្នាំ 2016 .</p>
			    		<p><span  class="glyphicon glyphicon-ok"></span>	យើង​ផ្តល់​អោយ​រាល់​គ្រប់​ភោជនីយដ្ឋាន​អាហារ​ទាំង​អស់​អាច​ផ្សប់​ផ្សាយ​ពាណិជ្ចកម្ម​ដោយ​ឥត​គិត​ថ្លៃ​</p>
			    		<p><span  class="glyphicon glyphicon-ok"></span>	យើង​ផ្តល់​ជូន​អតិថិ​ជន​របស់​យើង​ជា​ជម្រើស​ល្អ​បំផុត​ជា​មួយ​នឹង​បច្ចេកវិទ្យា​ទំនើប​ចុង​ក្រោយ</p>
			    		<p><span  class="glyphicon glyphicon-ok"></span>	យើង​ផ្តល់​ជូន​ដល់​អតិថិជន​នូវ​វិធីដែល​ត្រឹម​ត្រូវ​ក្នុង​ការ​ចែក​រំលែក​ផលិត​ផល​ជា​ផ្លូវ​ការ​របស់​ពួក​គេ​ទៅ​កាន់​អ្នក​រាល់​គ្នា.</p>
			    		<p><span  class="glyphicon glyphicon-ok"></span>	យើង​ផ្តល់​ជូន​អតិ​ថិ​ជន​របស់​យើង​ផ្តល់​សេវា​បាន​លឿន​ជាង​មុន.</p>
                </div>
                <div class="col-lg-3  col-md-6 col-sm-6 col-xs-6 ">
                    <h3> ប​ណ្តា​ញ​សង្គម </h3>
               
                   <ul class="social" >
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                    
                </div>
               <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
                    <h3> ទាញយកកម្មវិធីទូរស័ព្ទដៃ</h3>
                    <ul>
                        <li> <a href="#"><img src="${pageContext.request.contextPath}/resources/upload/playlist/img/appstore.png"/></a> </li>
                        <li> <a href="#"><img src="${pageContext.request.contextPath}/resources/upload/playlist/img/googleplay.png"/> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    <!-- <felksksdcjs -->
    <div class="footer-bottom">
        <div class="container">
        <center>
            <p class="pull-center"> រក្សាសិទ្ធគ្រប់យ៉ាង © និស្សិតនៅ មជ្ឈមណ្ឌល កូរ៉េ សហ្វហ្វែរ អេច អរ ឌី .  </p>
        </center>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>

<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/script/admin/category.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.js" type="text/javascript"></script>


<!-- Owner if -->

<script src="${pageContext.request.contextPath}/resources/script/owner/detail.js" type="text/javascript"></script>
</body>
</html>