<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<head>
      <style>
      
      .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    border-radius:4px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}
      
      
      </style>
      </head>
<c:if test="${grandTotal==0}">
	<c:redirect url="/"/>
</c:if>

<table align="center" class="table">
	<tr class="danger">
		<td colspan="4"><center><h3>Your Order</h3></center></td>	
	</tr>
	<tr>
	    <td ><b>Product Name</b></td>
	    <td><strong>Quantity</strong></td>
	    <td><strong>Total</strong></td>
	    
	  </tr>
	    
<c:forEach items="${cartList}" var="cartItem">
     <form action="<c:url value="/updateCartItem/${cartItem.cartId}"/>" method="get">
         <tr class="info">
         <td>${cartItem.product.productName}</td>
         <td>${cartItem.quantity}</td>
         <td>${cartItem.subtotal}</td>
        </tr>
	</form>
</c:forEach>
	<tr>
	    <td col span="2"><h4>Grand Total</h4></td>
	    <td>Rs.${grandTotal}/-</td>
	    </tr>
	  </table>
	  
<form action="<c:url value="/PaymentConfirm"/>" method="get">	   
	  <table align="center" class="table">  
	       <tr style="background-color:#424242;color:white">
	           <td colspan="2"><center><h4>Payment Option</h4></center></td>
	        </tr>
	    <tr>
	       <td><strong>Payment Option<strong></strong></td>
	       <td>
	       <input type="radio" name="pmode" value="CC"/><i class="fas fa-credit-card"></i>Credit Card&nbsp;&nbsp;&nbsp;&nbsp;
	       <input type="radio" name="pmode" value="NB"/><i class="fas fa-laptop"></i>Net Banking&nbsp;&nbsp;&nbsp;&nbsp;
	       <input type="radio" name="pmode" value="CD"/><i class="far fa-money-bill-alt"></i>Cash On Delivery&nbsp;&nbsp;&nbsp;&nbsp;
	       </td>
	      </tr>
	      
	      <tr>
	        <td><strong>Shippment Address</strong></td>
	        <td><textarea name="shippAddr"></textarea></td>
	        </tr>
	      <tr>
	      <td colspan="2"><center><button class="button button1">Pay</button></center></td>
	      </tr>
	    </table>
	   </form> 
	 <%@include file="footer.jsp"%>
	      
	      
	      
	      
	   
	        
	   