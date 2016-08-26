<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#mycontact{
		margin:30px 0px;
	}
</style>
<div class="container">
<div class="row margintop-50">
      <div class="col-md-12 col-md-12 col-sm-12 col-xs-12">
           <div class="panel">
           <div class="row panel-group">
				<div class="panel panel-info">
					<div class="panel-heading">រក្សារទំនាក់ទំនង</div>
                <!-- <div class="panel-heading"​ style="background-color: rgb(214,236,246);">
                  <center><p class="panel-title" style="font-size: 22px;"​​>រក្សារទំនាក់ទំនង</p></center>
                </div> -->
                <center>
                <div class="panel panel-body">
                <div class="row">
                	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
									<button class="fab"><span>
									<img  src="${pageContext.request.contextPath}/resources/upload/user/img/location.png" ></span></button>
									<h3 id="mycontact">អាស័យដ្ឋាន</h3>
						<h5>Korea Software HRD Center</h5>
						<p>ផ្ទះលេខ​ ១២, ផ្លូវ. ៣២៣, សង្កាត់បឹងកក់ ២ ,ខណ្ឌ ទួលគោក, រាជធានី ភ្នំពេញ, កម្ពុជា</p>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<button class="fab"><span>
					 	<img  src="${pageContext.request.contextPath}/resources/upload/user/img/phone.png" >
					</span></button>
					<h3 id="mycontact">ទូរស័ព្ទ</h3>
					<h5>Korea Software HRD Center</h5>
					<p><span class="glyphicon glyphicon-earphone"></span>(855)23 991 314</p> 
                    <p><span class="glyphicon glyphicon-earphone"></span>(855)77 771 236 (ខ្មែរ,ENG) </p>
                    <p><span class="glyphicon glyphicon-earphone"></span>(855)15 455 552 (ខ្មែរ,ENG) </p>
                    <p><span class="glyphicon glyphicon-earphone"></span>(855)17 528 169 (កូរ៉េ,ENG)</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<button class="fab"><span>
					 	<img  src="${pageContext.request.contextPath}/resources/upload/user/img/email.png" >
					</span></button>
					<h3 id="mycontact">អ៊ីម៉ែល</h3>
					<p><sapn class="glyphicon glyphicon-envelope"></span>INFO.KSHRD@GMAIL.COM</p>
                  <p><sapn class="glyphicon glyphicon-envelope"></span>PHIRUM.GM@GMAIL.COM</p>
                </div>
				</div>
				<div class="row">
				<div class="col-md-12 col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
                  
                  	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                  	<div style="overflow:hidden;height:500px;width:100%;"><div id="gmap_canvas" style="height:500px;width:100%;">
                  	<style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
                  	<a class="google-map-code" href="http://csgofranklin.com" id="get-map-data">csgopolygon code</a></div>
                  	</div><script type="text/javascript"> 
                  	function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(11.5759661,104.89083049999999),mapTypeId: google.maps.MapTypeId.ROADMAP};
                  	map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
                  	marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(11.5759661, 104.89083049999999)});
                  	infowindow = new google.maps.InfoWindow({content:"<b>Korea Software HRD Center</b><br/>323<br/> Phnom Penh" });
                  	google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}
                  	google.maps.event.addDomListener(window, 'load', init_map);</script>
                   
                  </div>
                </div>
                 </center>
                 
                </div>
               
                </div>
             </div>       
    </div>
    </div>
    </div>
    <hr>