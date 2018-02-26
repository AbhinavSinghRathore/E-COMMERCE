<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h3 align="center">Product Page</h3>

<table align="center">
	<tr bgcolor="pink">
		<td colspan="3">Product Detail</td>	
	</tr>
	<tr>
<c:forEach items="${listProducts}" var="product">
	
		<td>
			 <img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="100" height="100"/>
			<br/>
			<a href="<c:url value="/productDesc/${product.productId}"/>">${product.productName}</a>
			<br/>INR. ${product.price} /-
		</td>
	
</c:forEach>
	</tr>
</table>
</body>
</html>