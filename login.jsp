<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<title>Login Page</title>
	<link href="/Flyway/resources/css/login.css" rel="stylesheet">
<!-- 
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	
---- Include the above in your HEAD tag --------

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     -->
	
</head>
<body>


<div class="login-box">

  <h2>Login</h2>
  <p style="color: white;">${loginmsg}</p>
  <form action="signin" method="post">
    <div class="user-box">
      <input type="email" name="email" required="required">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="required">
      <label>Password</label>
    </div>
<input  type="submit" class="btn btn-success" value="Submit">
      
    
  </form>
  <div>
  	<span style="color: white;">Don't Have an Account please?<a href="Register.jsp">Sign-Up</a></span>
  </div>
</div>
</body>
</html>