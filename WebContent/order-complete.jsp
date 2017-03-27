<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Complete Order</title>
<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<%@include file="fragment/header.jsp" %>
	
	<div class="mysidebar">
    	<%@include file="fragment/side-category.jsp" %>
    </div>
    
    <div class="main">
    	<h3>Your order is complete</h3>
    	<hr>
    	<p>Your Order ID is: 2345</p>
    	<p>Thank you for shopping with Mama Pop.</p>
    	
    </div>
    
    <%@include file="fragment/footer.jsp" %>
</body>
</html>