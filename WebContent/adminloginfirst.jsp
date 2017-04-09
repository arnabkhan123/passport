<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login |Indian passport portal</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">

 <script language="Javascript" src="jquery.js"></script>
    <script type="text/JavaScript" src='state.js'></script>
    <link rel="stylesheet" type="text/css" href="style.css">

</head>


<style type="text/css">

body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
   /*  background-image: url("image/digi.jpg"); */
    min-height: 100%;
}
.w3-navbar li a {
    padding: 16px;
    float: left;
}





#a{
  height:1080px;
  width:100%;
background-color: blue;
 background-image: url("image/digital2.jpg"); 
}
#b{
 height:50px;
  width:100%;
background-color: lightblue;

}
#c{
 height:1080px;
  width:60%;
background-color: white;
/* float:right; */

}
/* #c,img
{
 float: right;
} */
/* #c1{
height:350px;
width:60%;
background-color: gray;

} */
#c2{
height:350px;
width:40%;
background-color:ocean;
/* float:left; */

.mdl-button {
  color: white;
  background-color: lightgreen;
}


}


</style>
<script type="text/javascript">

function validateForm()
{
	var x=document.forms["myform"]["email"].value;
	var atpos=x.indexof("@");
	var dotpos=x.lastindexof(".");
	if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
		{
		    alert("Not a valid e-mail address! ");
		    return false;
		
		}
	
	
	}
</script>

<!-- <script type="text/javascript">

var arr=new Array("digi.jpg","digi1.jpg","digital1.jpg","digital2.jpg","digitalind1.jpg","gov.jpg","gov2.jpg","makeindia.jpg","pass1.jpg","passport.jpg");

var i=0;
function img()
{
	document.getElementById("li").src=arr[i];
	i++;
	if(i==arr.length)
		{
		  i=0;
	
		}
	window.setTimeout("img()","4000");
	
	
	}

</script>
 -->


<body >

<%@ page import="javax.servlet.http.HttpSession,javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse" %>

<div class="w3-top">
  <ul class="w3-navbar w3-white w3-card-2" id="myNavbar">
    <li>
      <a href="#home" class="w3-wide">INDIAN PASSPORT PROVIDER SYSTEM</a>
     
      
    </li>
    <!-- Right-sided navbar links -->
    <li class="w3-right w3-hide-small">
      <a href="#about">ABOUT</a>
      <a href="#team"><i class="fa fa-user"></i> TEAM</a>
      <a href="#work"><i class="fa fa-th"></i> WORK</a>
      <a href="#pricing"><i class="fa fa-usd"></i> PASS</a>
      <a href="#contact"><i class="fa fa-envelope"></i> CONTACT</a>
    </li>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
    <li>
      <a href="javascript:void(0)" class="w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
        <i class="fa fa-bars w3-padding-right w3-padding-left"></i>
      </a>
    </li>
  </ul>
</div>

<!-- Sidenav on small screens when clicking the menu icon -->
<nav class="w3-sidenav w3-black w3-card-2 w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()">ABOUT</a>
  <a href="#team" onclick="w3_close()">TEAM</a>
  <a href="#work" onclick="w3_close()">WORK</a>
  <a href="#pricing" onclick="w3_close()">PASS</a>
  <a href="#contact" onclick="w3_close()">CONTACT</a>
</nav>


<form name="myform" action="adminlogin.jsp" method="post">
<div id="a">


<!-- <img id="li" src="image/digital2.jpg"  width="200"   height="195" > -->
<div id="b">
<marquee behavior="scroll" direction="left" onmouseover="this.stop()" onmouseout="this.start()"><font color='black'>Ration card shall not be accepted as a document of identity or proof of residence at the time of submission of passport application.</font></marquee>
<!-- <center><b><a href="index1.html"><font color="red">My Bookings</font></a></b><font color="lightblue">......</font>  <b><a href="cancel1.html"><font color="green">Cancellation</font></a></b><font color="lightblue">.......</font>  <b><a href="more.html"><font color="orange">About Us</font></a></b></center> -->

<%= new java.util.Date() %>
</div>
<div id="c">
<img src='image/gov1.png'>
  <fieldset style="text-align: center;">
  <legend><b><img src="image/adminlogo.jpg" width="100" height="100"><font color="blue">LOGIN</font></b></legend>
  <details>Please enter the following details.Furnishing of incorrect information would lead to rejection of application.</details>
   
      
    

     Email Id  :  <b><font color="red">*</font></b>    
      <input type="email" name="email" placeholder="XXXXX@gmail.com" required><br><br>
     
     Pasppword: <b><font color="red">*</font></b> 
       <input type="password" name="password"  required><br><br>
     
      
      
      
     
      </fieldset>
      
  NOTE :-  Fieldset mark ( <b><font color="red">*</font></b>) With this is mandatory. <br><br>  
      
     
  <button     class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
  Admin Login >>
</button>
      
    <!--  <input type="button" value="admin" onclick="window.location='adminlogin.jsp' " />  -->
       <h1><font color="blue">About Indian Passport</font></h1>
  <p1><font color="violet">Passport is issued by the Indian Government certify that holders are citizens of the Republic of India by birth or naturalization. This is as per the Passports Act, 1967. The CPV (Consular Passport & Visa) Division of the External Affairs Ministry works as central passport organization and it is also responsible for Indian passport issuance. The issuance of passport happens across 37 different locations around the country. There are 162 diplomatic missions abroad where Indian Passport is issued. These include consulates, High Commissions and Embassies.</font></p1>
      
      
 </div>  
<div id="c2">

 
</div>
</div>
<div id="fooder">
 
</div>
<div id="footer">

</div>



</form>

<!-- Contact Section -->
<div class="w3-container w3-padding-128 w3-light-grey" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-half">
      <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Odisha</p>
      <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone: +8337970729</p>
      <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email: homejeet.b@gmail.com</p>
      <br>
      <form action="form.asp" target="_blank">
        <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
        <p>
          <button class="w3-btn w3-padding" type="submit">
            <i class="fa fa-paper-plane"></i> SEND MESSAGE
          </button>
        </p>
      </form>
    </div>
    <div class="w3-half">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;"></div>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-btn w3-padding w3-light-grey w3-hover-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-text-indigo"></i>
    <i class="fa fa-flickr w3-hover-text-red"></i>
    <i class="fa fa-instagram w3-hover-text-purple"></i>
    <i class="fa fa-twitter w3-hover-text-light-blue"></i>
    <i class="fa fa-linkedin w3-hover-text-indigo"></i>
  </div>
  <p>Powered by <a href="http://www.w3schools.com/w3css/default.asp" title="Arnab Khan" target="_blank" class="w3-hover-text-green">homee</a></p>
</footer>
 
<!-- Add Google Maps -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8TK3ugAqKblBzQfgtlUa47EzkqoY7Gu8&callback=initMap"></script>

<script>
<!-- Google Map Location -->
var myCenter = new google.maps.LatLng(20.2961,85.8245);

function initialize() {
var mapProp = {
  center: myCenter,
  zoom: 12,
  scrollwheel: false,
  draggable: false,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidenav when clicking the menu icon
var mySidenav = document.getElementById("mySidenav");

function w3_open() {
    if (mySidenav.style.display === 'block') {
        mySidenav.style.display = 'none';
    } else {
        mySidenav.style.display = 'block';
    }
}

// Close the sidenav with the close button
function w3_close() {
    mySidenav.style.display = "none";
}
</script>





</body>
</html>