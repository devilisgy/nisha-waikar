<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="/Flyway/resources/css/register.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<div class="container">
          <form class="form-horizontal" role="form" action="signup" method="post">
                <h2>Registration</h2>
                <div>
                	Already Have an Account?<a href="login.jsp" >SignIn</a>
                </div>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">First Name<span style="color: red;" >*</span></label>
                    <div class="col-sm-9">
                        <input type="text" name="firstName" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Last Name<span style="color: red;" >*</span></label>
                    <div class="col-sm-9">
                        <input type="text" name="lastName" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email<span style="color: red;" >*</span> </label>
                    <div class="col-sm-9">
                        <input type="email" name="email" placeholder="Email" class="form-control" name= "email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password<span style="color: red;" >*</span></label>
                    <div class="col-sm-9">
                        <input type="password" name="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">ConfirmPassword<span style="color: red;" >*</span></label>
                    <div class="col-sm-9">
                        <input type="password" name="confirmPassword" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">DOB<span style="color: red;" >*</span></label>
                    <div class="col-sm-9">
                        <input type="date" name="birthDate" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Mobile<span style="color: red;" >*</span> </label>
                    <div class="col-sm-9">
                        <input type="phoneNumber" name="phoneNumber" placeholder="Phone number" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-6">
                        <div class="row">
                            <div>
                            	<span style="color: red;" >*</span>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="male">Male
                                </label>
                            </div>
                            <div >
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="female">Female
                                </label>
                            </div>

                        </div>
                    </div>

                <input type="submit" class="btn btn-primary btn-block">
            </form> <!-- /form -->
    </div>

</body>
</html>