<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<table align="center" class="table">
	<tr class="danger">
		<td colspan="4"><center>Your Order</center></td>	
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
         <td>${cartItem.quantity}</td>
         <td>${cartItem.subtotal}</td>
        </tr>
	</form>
</c:forEach>
	<tr>
	    <td col span="2">Grand Total</td>
	    <td>Rs.${grandTotal}/-</td>
	    </tr>
	  </table>
	  
<form action="<c:url value="/PaymentConfirm"/>" method="get">	   
	  <table align="center" class="table">  
	       <tr bgcolor="pink">
	           <td colspan="2">Payment Option</td>
	        </tr>
	    <tr>
	       <td>Payment Option</td>
	       <td>
	       <input type="radio" name="pmode" value="CC"/>Credit Card
	       <input type="radio" name="pmode" value="NB"/>Net Banking
	       <input type="radio" name="pmode" value="CD"/>Cash On Delivery
	       </td>
	      </tr>
	      
	      <tr>
	        <td>Shippment Address</td>
	        <td><textarea name="shippAddr"></textarea></td>
	        </tr>
	      <tr>
	      <td colspan="2"><input type="submit" value="Pay"/></td>
	      </tr>
	    </table>
	   </form> 
	 </body>
</html>
	      
	      
	      
	      
	   
	        
	   