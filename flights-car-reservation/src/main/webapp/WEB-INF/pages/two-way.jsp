<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
/* font-family: 'Open Sans', sans-serif; font-family: 'Roboto', sans-serif; */
body{    background: url(../images/body-bg.jpg) no-repeat center center;
    font-family: 'Roboto', sans-serif;
    height: 100%;
    position: relative;
    } 
*:focus{outline:none}
a:hover{text-decoration:none}
.wraper{width:100%;float:left;}
.header{width:100%;float:left;background:#fff;padding:10px 0;    box-shadow: 0 0 5px #000;}
.tabing{width:100%; float:left;}
.tabing ul{margin:0px; padding:0px;list-style:none;width:20%;    float: left;}
.tabing ul li{    float: left;
    text-align: left;background: rgba(10,22,37,.8);
    width: 100%;margin-bottom:1px;
}
.tabing ul li a{display: block;
    vertical-align: middle;
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
    box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -moz-osx-font-smoothing: grayscale;
    -webkit-transition-duration: 0.3s;
    transition-duration: 0.3s;
    -webkit-transition-property: transform;
    transition-property: transform;
    padding: 10px 20px;
    cursor: pointer;
    text-decoration: none;
    color: #fff;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    font-size: 17px;
    text-align: center;}
 
.tabing ul li a.active {}
.tabing ul li a span {    display: block;
    text-align: center;
    color: #fff;
    font-size: 28px;}
.tab1{float: left;width: 100%;color: #fff;text-align: left;font-size: 20px;line-height: 25px;display: none;text-transform: capitalize;background: rgba(10,22,37,.8);color:#000;}
.tab-content {float:left;    width:80%;}
.tab-content .triptype label{    font: 400 14px/20px "Roboto";
    width: auto;
    display: inline-block;
    color: #fff;
    text-transform: uppercase;
    
    margin: 2px 10px;
    padding-bottom: 6px;cursor:pointer;}
	.tab-content .triptype label.active{ 
    border-bottom: 2px solid #ff6600;
    }
.tab-content .input-group label{font: 400 15px/28px "Roboto";margin: 0;width: 60px;text-align: left;}
.triptype{width: 100%;
    float: left;
    text-align: center;
    margin: 17px 0;}
.triptype input[type="radio"]{    font-size: 0;
    position: absolute;
    left: -9999px;}
.ctrl i{    position: absolute;
    top: 9px;
    left: 24px;
    color: #ccc;
    font-size: 23px;}
.ctrl .form-control{    border: none;
    border-radius: 0;
    margin-bottom: 20px;
    height: auto;
    padding: 8px 8px 8px 40px;
    line-height: 25px;}
.tab1.active{display:block}
.select-wrap{    width: 100%;
    float: left;
    padding: 0 15px;}
.select-wrap .adult-box{width:48%; float:left;margin-right:16px;}
.select-wrap.prefered-airline .adult-box{width:100%; float:left;margin-right:16px;margin-top:20px;}
.select-wrap .airport-box{width:100%; float:left;margin-right:16px;}
.select-wrap .adult-box:last-child{margin-right:0px;}
.select-wrap .adult-box select{    width: 100%;
    padding: 10px 6px 10px 5px;
    border-radius: 0;
    font: 400 12px/14px "Roboto";
    margin-top: 2px;
    border: none;}
.select-wrap span {display:block  ;  font: 400 14px/15px "Roboto";    margin:0px 0 0 0;  text-align: left;width:100%;color:#fff;}
	.srch{    border: none;
    background: #ff6600;
    color: #fff;
    padding: 6px 15px;
    margin-top: 10px;
    font: 400 20px/26px "Roboto";
    width: 100%;
    text-transform: uppercase;margin-bottom:15px;}
	/*calender*/


.align{

color:white;
     font-size:15px;
}
.bt{

text-align:center;

}
body {	
    background-color: #eee;
    background:url("https://assets.change.org/photos/1/ab/yb/itAbyBcoshEEoIX-1600x900-noPad.jpg?1463586875");
}
</style>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">Reservations</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
    	  <li><a href="${pageContext.request.contextPath}/contact"><span class="glyphicon glyphicon-earphone"></span> Contact</a></li>
      <li><a href="${pageContext.request.contextPath}/account"><span class="glyphicon glyphicon-home"></span> Home</a></li>
   <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-out"></span> Log-out</a></li>
    </ul>
  </div>
</nav>

<div class="container col-sm-offset-4">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
					
					
					
						<div class="tabing">
						
							<div class="tab-content">
								<div id="1" class="tab1 active">
								
								
									<form action="${pageContext.request.contextPath}/search" method="POST">
										
								<div class="triptype">
								
								
											<label class="rndTrip active"><input type="radio" name="Round" value="RoundTrip" ><a href="${pageContext.request.contextPath}/two-way">Round Trip</a> </label>
											<label class="oneTrip"><input type="radio" name="Round" value="OneWay" checked> <a href="${pageContext.request.contextPath}/search">OneWay</a></label>
										</div>
										<div class="select-wrap prefered-airline">
											<div class="adult-box">
												<span>Please select the origin city</span>
												<select name="origin">
													<option value="JFK">New York</option>
													<option value="IAD">Washington, Dulles</option>
													<option value="ATL">Altanta</option>
													<option value="DFW">Dallas</option>
													<option value="SFO">San Fransico</option>
													<option value="SEA">Seattle</option>
													<option value="MIA">Miami</option>
													<option value="MCI">Kansas</option>
													<option value="LAS">Las Vegas</option>
													<option value="ORD">Chicago</option>
												</select>
											</div>
										</div>
										
										<div class="select-wrap prefered-airline">
											<div class="adult-box">
												<span>Please select the destination city</span>
												<select name="dest">
													<option value="JFK">New York</option>
													<option value="IAD">Washington, Dulles</option>
													<option value="ATL">Altanta</option>
													<option value="DFW">Dallas</option>
													<option value="SFO">San Fransico</option>
													<option value="SEA">Seattle</option>
													<option value="MIA">Miami</option>
													<option value="MCI">Kansas</option>
													<option value="LAS">Las Vegas</option>
													<option value="ORD">Chicago</option>
												</select>
											</div>
										</div>
										
										
										
										<div class="col-sm-6 col-xs-6 ctrl" style="margin-top:20px">
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<div class="align">
											<span>Departure</span>
											</div>
											<input id="depart" type="text" class="form-control" name="depart" value="" placeholder="yyyy-mm-dd">
										
										</div>
										<div class="col-sm-6 col-xs-6 ctrl hide_one-trip" style="margin-top:20px"	>
											<i class="fa fa-calendar" aria-hidden="true"></i>
											<div class="align">
											<label>Return</label>
											</div>
											<input id="airport_city_Return" type="text" class="form-control" name="reverse" value="" placeholder="yyyy-mm-dd">
										</div>
										<div class="select-wrap">
											<div class="adult-box">
												<span>Adult</span>
												<select name="adult">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">2</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
												</select>
											</div>
											<div class="adult-box">
												<span>Child</span>
												<select name="child">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">2</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
												</select>
											</div>
											
										</div>
										
											
										<div class="col-lg-12">
											<input type="submit" class="srch" value="Search Flights" />
										</div>
									</form> 
								</div>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>
	</body>
	</html>
	