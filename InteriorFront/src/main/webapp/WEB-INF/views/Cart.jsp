<%@include file="Header.jsp"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<table align="center" class="col mb-2 table table-hover success">
	<tr class="danger">
		<td colspan="4"><center>Your Cart</center></td>	
	</tr>
	<c:if test="${grandTotal!=0}">	
	
	
	
	<tr>
	    <td>Product</td>
	    <td>Product ID</td>
	    <td>Quantity</td>
	    <td>SubTotal</td>
	    <td>Operation</td>
	  </tr>
	  </c:if>	
	  <c:if test="${grandTotal==0}">
	  <tr> 
	       <td> 
	       <h1>Your cart is empty please add atleast one product </h1>
	        </td>
	        </tr>
	        </c:if>
	        
	        
	  
	  
	    
<c:forEach items="${cartList}" var="cartItem">
     <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="post">
         <tr class="info">
         <td><img src="<c:url value="/resources/images/${cartItem.productId}.jpg"/>" width="50" height="55" />${cartItem.product.productName}</td>
         <td>${cartItem.productId}</td>
         <td><input type="text" name="qty" value="${cartItem.quantity}"/></td>
         <td>${cartItem.subtotal}</td>
         <td>
         	<button type="submit" class=" btn btn-success fas fa-sync-alt"></button>
           
           <a href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class="btn btn-danger far fa-trash-alt"></a>
	   </td>
		</tr>
		</form>
</c:forEach>
  
<c:if test="${grandTotal!=0}">	

	<tr>
	
	    <td colspan="2" style="float:right;">grand Total</td>
	    <td colspan="2">Rs.${grandTotal}/-</td>
	    </tr>
	    </c:if>
	    
	     <%-- <tr class="row">
	   <td class="col-sm-12  col-md-6"><center><a href="<c:url value="/"/>" class="btn btn-primary">Continue Shopping</a></center></td>
	   <c:if test="${grandTotal!=0}">	
	  <td class="col-sm-12 col-md-6 text-right"><center><a href="<c:url value="/ConfirmOrder"/>" class="btn btn-primary">Check Out</a></center>
	  </td>
	  </c:if> 
	  
	  
	   </tr> --%>
	   
	   
	    
	   
</table>
 
  <div class="col mb-2">
  
    <div class="row">
    <div class="col-sm-12  col-md-6 center" >
	    
	    <a  href="<c:url value="/"/>" class="btn btn-block btn-light"><center>Continue Shopping</center></a>
	    
                </div>
                   <c:if test="${grandTotal!=0}">
                <div class="col-sm-12 col-md-6 text-right">
                    <a href="<c:url value="/ConfirmOrder"/>" class="btn btn-lg btn-block btn-success text-uppercase">Checkout</a>
                </div>
                </c:if> 
            </div>
        </div> 
