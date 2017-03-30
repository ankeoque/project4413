<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${bookList.title}</title>	
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<jsp:include page="../fragment/header.jsp" flush="true" />
	
	<div class="mysidebar">
    	<jsp:include page="../fragment/side-category.jsp" flush="true" />
    </div>
    
    <div class="main">
    	<form method="GET" action="cartctrl">
	    	<img class="img-float" src="../project/images/${bookList.path}.jpg" />
	    	<div class="item-info">
	    		<h2>${bookList.title} </h2><input type="hidden" name="book_title" value="${bookList.title}">
			    <h5>Book ID: ${bookList.id}</h5><input type="hidden" name="book_id" value="${bookList.id}">
			    <h5>Rating: ${bookList.rating} </h5><input type="hidden" name="book_rating" value="${bookList.rating}">
		 				<h5>Category: ${bookList.category}</h5><input type="hidden" name="book_category" value="${bookList.category}">
			    <h5>Author: ${bookList.author} </h5><input type="hidden" name="book_author" value="${bookList.author}">
			    <h5>Price: CAD ${bookList.price} </h5><input type="hidden" name="book_price" value="${bookList.price}">
			    
			    <input type="hidden" name="quantity" value="1"><input type="hidden" name="action" value="add">
		        <input type="submit" name="addToCart" value="Add To Cart">
	    	</div>
    	</form>   
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
    
<jsp:include page="../fragment/footer.jsp" flush="true" />

</body>
</html>