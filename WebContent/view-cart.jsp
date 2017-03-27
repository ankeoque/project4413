<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>View Cart</title>
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<%@include file="fragment/header.jsp" %>
	
	<div class="mysidebar">
    	<%@include file="fragment/side-category.jsp" %>
    </div>
    
    <div class="main">
	    <h1>Your Shopping Cart</h1>
	    <table>
		  <tr>
		    <th>Title</th>
		    <th>Action</th>
		    <th>Quantity</th>
		    <th>Price</th>
		  </tr>
		  <tr>
		    <td>Peter</td>
		    <td><a href="">Remove</a></td>
		    <td>1</td>
		    <td>$43.99</td>
		  </tr>
		  <tr>
		    <td>Lois</td>
		    <td><a href="">Remove</a></td>
		    <td>1</td>
		    <td>$33.29</td>
		  </tr>
		  <tr>
		    <td colspan="3"><button>Update Cart</button></td>
		    <td>Subtotal: <span style="color: emerald;">$134.38</span></td>
		  </tr>
		</table>
		<h3><a href="">Proceed to Checkout</a></h3>
    </div>

<%@include file="fragment/footer.jsp" %>
</body>
</html>