<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Category: put the variable here</title>
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<jsp:include page="../fragment/header.jsp" flush="true" />
	
	<div class="mysidebar">
    	<jsp:include page="../fragment/side-category.jsp" flush="true" />
    </div>
    
    <div class="main">
     <h1>Product for category <b>${bookList[0].category}</b></h1>
     
      <div class="panel">
      	<c:forEach items="${bookList}" var="stu">
			<div style="display:inline-block; margin-right: -300px;">
				<form method="GET" action="cartctrl">
					<a href="${initParam['param2']}?item=${stu.path}"><input type="hidden" name="book_path" value="${stu.path}">
					<img src="../project/images/${stu.path}.jpg" />
				    <h3>${stu.title} </h3></a><input type="hidden" name="book_title" value="${stu.title}">
				    <p>Rating: ${stu.rating} </p><input type="hidden" name="book_rating" value="${stu.rating}">
				    <p>Author: ${stu.author} </p><input type="hidden" name="book_author" value="${stu.author}">
				    <p>Price: CAD ${stu.price} </p><input type="hidden" name="book_price" value="${stu.price}">
				    <input type="hidden" name="book_id" value="${stu.id}"><input type="hidden" name="book_category" value="${stu.category}">
				    <input type="hidden" name="quantity" value="1"><input type="hidden" name="action" value="add">
	             	<input type="submit" name="addToCart" value="Add To Cart">
             	</form>
			    
		    </div>
	    </c:forEach>
      </div>
   </div>

<jsp:include page="../fragment/footer.jsp" flush="true" />

</body>
</html>