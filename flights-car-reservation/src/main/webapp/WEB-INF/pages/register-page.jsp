<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Insert title here</title>

 <style>  
body {	
    background-color: #eee;
    background:url("https://buidln.clipdealer.com/002/494/500//previews/3--2494500-Montage%20of%20doctors%20working%20with%20elderly%20patients.jpg");
}
*[role="form"] {
    width: 200px;
    padding: 15px;
    margin: 0 auto;
    background-color: midnightblue;
    border-radius: 0.3em;
}
*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
}
</style>
<style>
body {	
    background-color: #eee;
    background:url("https://i.ytimg.com/vi/3kkSEeh-kOQ/maxresdefault.jpg");
}
*[role="form"] {
    width: 200px;
    padding: 15px;
    margin: 0 auto;
    background-color: midnightblue;
    border-radius: 0.3em;
}
*[role="form"] h2 {
    margin-left: 5em;
    margin-bottom: 1em;
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
      
   <li><a href="${pageContext.request.contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Log-in</a></li>
    </ul>
  </div>
</nav>

<div class="container">

	

    <h1 class="well" style="text-align: center">Registration Form</h1>
<form:form action="${pageContext.request.contextPath}/register-put" method="POST" modelAttribute="account4">	
   
	<div class="col-lg-12 well">
	<div class="row">
				
					<div class="col-sm-12">
						
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								
							<form:input  placeholder="Enter Your First Name.." class="form-control" path="firstname"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<form:input placeholder="Enter Your Last Name.." class="form-control" path="lastName"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label>Age</label>
								<form:input type="number" placeholder="Enter Your Last Name.." class="form-control" path="age"></form:input>
							</div>
													
							<div class="col-sm-6 form-group">
								<label>E-mail Id</label>
								<form:input type="text" placeholder="Enter your E-mail Id Here.." class="form-control" path="email" ></form:input>
							</div>	
                            
                            <div class="col-sm-6 form-group">
								<label>Username</label>
								<form:input type="text" placeholder="Enter your username" class="form-control" path="username" ></form:input>
							</div>	
                            
                            
							<div class="col-sm-6 form-group">
								<label>Password</label>
								<form:input type="Password" placeholder="Enter your password Here.." class="form-control" path="password" ></form:input>
							</div>	
							<div class="col-sm-6 form-group">
						<label>Phone Number</label>
						<form:input type="number" placeholder="Enter your number" class="form-control" path="number" ></form:input>
					</div>
							<div class="col-sm-6 form-group ">
    <div><label for="gender">Gender :</label></div>
    <label class="radio-inline"><form:radiobutton path="gender" value="male" ></form:radiobutton>Male</label>
    <label class="radio-inline"><form:radiobutton path="gender" value="female"></form:radiobutton>Female</label>
    </div>
    <form:errors path="number" cssStyle="color:red"></form:errors>
    	
						</div>	
					
					<form:button type="submit" class="btn btn-lg btn-info" Style="position:relative; margin-left:42%;">Submit</form:button>				
					</div>
    			
    			</div></div></form:form></div>
</body>
</html>