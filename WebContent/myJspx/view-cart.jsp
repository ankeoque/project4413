<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>View Cart</title>
	<link rel="StyleSheet" href="pro.css" type="text/css"/>
</head>
<body>
	<jsp:include page="../fragment/header.jsp" flush="true" />

	<div class="mysidebar">
		<jsp:include page="../fragment/side-category.jsp" flush="true" />
	</div>
    
    <div class="main">
	    <h1>Your Shopping Cart</h1>
	    <table>
		  <tr>
		    <th>Title</th>
		    <th>Quantity</th>
		    <th>Unit Price</th>
		    <th>Sum Price</th>
		  </tr>
		  <jsp:useBean id="cart" scope="session" class="model.CartItem" />
		  <c:if test="${cart.lineItemCount==0}">
		  	<tr>
		  		<td colspan="4">- Cart is currently empty -<br/>
		  	</tr>
		  </c:if>
		  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
		  <form name="item" method="GET" action="cartctrl">
		  <tr>
		    <td><a href="${initParam['param2']}?item=${cartItem.item.path}"><c:out value="${cartItem.item.title}"/></a></td>
		    <td><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
		    <input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> 
		    <input type="submit" name="action" value="Update">
		 	<input type="submit" name="action" value="Delete"></td>
		    <td>$<c:out value="${cartItem.unitCost}"/></td>
		    <td>$<c:out value="${cartItem.totalCost}"/></td>
		  </tr>
		  </form>
		  </c:forEach>
		  <tr>
		    <td colspan="3"></td>
		    <td>Subtotal: <span style="color: emerald;">$<c:out value="${cart.orderTotal}"/></span></td>
		  </tr>
		</table>
		<h3><a href="">Proceed to Checkout</a></h3>
    </div>

<%@include file="../fragment/footer.jsp" %>
</body>
</html>