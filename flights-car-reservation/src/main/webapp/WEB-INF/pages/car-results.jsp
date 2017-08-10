<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style>
	 
    .paymethod img{
	
	display:inline-block; 	
  

}
.paymethod img.top: hover {
  opacity:0;
}
.paymethod
{
text-align:center;
display: inline-block;     /* arranging the div elements-->*/
  margin: 0px 2% 5rem 2%;
  width: 45%;
  position:relative;
  overflow:auto;    /* setting responsive design */
  }
  
  .wrapper{
  
  text-align:center;
  }


  p{

color: black;
font-size: 18px;
text-align: center;
}
  
.paymethods p {
font-size: 50px;

}


h1{
text-align: center;

}

	  </style>
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
<br>
<h1><strong>Select a Car</strong></h1>

<div class ="paymentmethods">

<div class ="paymethod">  
<h1>${car1.getType() }</h1>
 <img src="http://rubka.org.ua/wp-content/uploads/2015/04/2016-Toyota-Camry-HD-wallpaper.jpg"  class="img-rounded" width="364" height="276" alt="Premier League">
 <br><br>

<p> Car Model: ${car1.getName()}<br>
  Passenger Capacity: 4 <br>
    Price:$ ${car1.getCost()} /day <br>
    </p>
<div class="wrapper"> 
<form action="${pageContext.request.contextPath}/car-book" method="post">
 <Button type="submit" name="car" value="car1" class="btn btn-success" >Reserve</Button>
 </form>
 </div>
</div>
<div class="paymethod">
<h1>${car2.getType() }</h1>
 <img src="https://images2.alphacoders.com/255/255490.jpg"  class="img-rounded" width="394" height="276" alt="Premier League">
<br><br>
<p> Car Model: ${car2.getName()}<br>
    Passenger Capacity: 4 <br>
    Price: $ ${car2.getCost()}/day <br>
    </p>
<div class="wrapper">
<form action="${pageContext.request.contextPath}/car-book" method="post">
 <Button type="submit" name="car" value="car2" class="btn btn-success" >Reserve</Button>
 </form>
</div>
</div>
<div class="paymethod">
<h1>${car3.getType() }</h1>
 <img src="https://media.ed.edmunds-media.com/nissan/altima/2016/oem/2016_nissan_altima_sedan_25-sr_fq_oem_2_1280.jpg"  class="img-rounded" width="364" height="276" alt="Premier League">
<br><br>
<p> Car Model: ${car3.getName()}<br>
    Passenger Capacity: 5 <br>
    Price: $ ${car3.getCost()}/day <br>
    </p>
<div class="wrapper">
 <form action="${pageContext.request.contextPath}/car-book" method="post">
 <Button type="submit" name="car" value="car3" class="btn btn-success" >Reserve</Button>
 </form>
</div>
</div>

<div class="paymethod">
<h1>${car4.getType() }</h1>
 <img src="https://images7.alphacoders.com/324/324150.jpg"  class="img-rounded" width="364" height="276" alt="Premier League">
<br><br>
<p> Car Model:${car4.getName()}<br>
   Passenger Capacity: 4 <br>
    Price: $ ${car4.getCost()}/day <br>
    </p>
<div class="wrapper">
 <form action="${pageContext.request.contextPath}/car-book" method="post">
 <Button type="submit" name="car" value="car4" class="btn btn-success" >Reserve</Button>
 </form>
</div>
</div>


</div>  
</body>
</html>