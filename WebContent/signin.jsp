<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sign In</title>
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<%@include file="fragment/header.jsp" %>
	
	<div class="mysidebar">
    	<%@include file="fragment/side-category.jsp" %>
    </div>
    
    <div class="main">
	    <h3>Sign In</h3>
	    <h3>Are You A Returning Customer?</h3>
	    <div>
		    <div class="box-yes">
		    	<h4 class="text-center">Yes</h4>
		    	<form>
				  Username: <input type="text" name="name"><br>
				  Password: <input type="password" name="pass"><br><br>
				  <input type="submit" value="Sign In">
				</form>
		    </div>
		    <div class="box-no">
		    	<h4 class="text-center">No. I would like to sign up for an account. </h4>
		    	<form>
				  Username: <input type="text" name="name"><br>
				  Password: <input type="password" name="pass"><br>
				  Re-enter Password: <input type="password" name="pass"><br><br>
				  <input type="submit" value="Create Account">
				</form>
		    </div>
		 </div>
    </div>

<%@include file="fragment/footer.jsp" %>
</body>
</html>