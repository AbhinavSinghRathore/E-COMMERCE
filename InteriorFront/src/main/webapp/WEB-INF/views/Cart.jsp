<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<table align="center" class="table">
	<tr class="danger">
		<td colspan="4"><center>Your Cart</center></td>	
	</tr>
	<tr>
	    <td>Product ID</td>
	    <td>Quantity</td>
	    <td>SubTotal</td>
	    <td>Operation</td>
	  </tr>
	    
<c:forEach items="${cartList}" var="cartItem">
     <form action="<c:url value="/updateCartItem/${cartItem.cartId}"/>" method="get">
         <tr class="info">
         
         <td>${cartItem.productId}</td>
         <td><input type="text" name="qty" value="${cartItem.quantity}"/></td>
         <td>${cartItem.subtotal}</td>
         <td>
           <input type="submit" value="Update" class="btn-sucess"/>
           <a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class="btn btn-danger btn-block">Delete</a>
	   </td>
		</tr>
		</form>
</c:forEach>
	<tr>
	    <td col span="2">Grand Total</td>
	    <td col span="2">Rs.${grandTotal}/-</td>
	    </tr>
	    <tr>
	   <td col span="2"><center><a href="<c:url value="/UserHome"/>" class="btn btn-danger btn-block">Continue Shopping</a></center></td>
	   <td col span="2"><center><a href="<c:url value="/ConfirmOrder"/>" class="btn btn-danger btn-block">Check Out</a></center></td>
	   </tr>
</table>
</body>
</html>