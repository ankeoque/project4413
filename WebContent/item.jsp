<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Put item name here</title>	
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<%@include file="fragment/header.jsp" %>
	
	<div class="mysidebar">
    	<%@include file="fragment/side-category.jsp" %>
    </div>
    
    <div class="main">
    	<img class="img-float" src="images/harryPotter.jpg" />
    	<div class="item-info">
    		<h2>A little prince</h2>
    		<h5>Description: The item screen shows detailed information about an individual item for sale</h5>
    		<h5>Author: Alice Doe</h5>
    		<h5>Category: Fiction</h5>
    		<h5>Price: $13.99</h5>
    		<h5>Rating: $13.99</h5>
    		<button>Add To Cart</button>
    	</div>	
    </div>
    	
    <br><br>
    
    <div class="review">
    	<h3>Reviews</h3>
    	<hr>
    	<p>The pet store Web site reflects several design choices that have a global impact on application behavior and performance. Chapter 11 of the BluePrints book discusses high-level design choices in some detail. </p>
    	<br><hr>
    	<p>The pet store Web site reflects several design choices that have a global impact on application behavior and performance. Chapter 11 of the BluePrints book discusses high-level design choices in some detail. </p>
    	<br><hr>
    	<h4>Add a review</h5>
    	<form>
				  Your Review: <textarea rows="4" cols="50" name="review"></textarea><br>
				  <input type="submit" value="Submit">
		</form>	
    </div>
    
    <%@include file="fragment/footer.jsp" %>
</body>
</html>