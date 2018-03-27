<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>-->

<h3 align="center">Product Description</h3>

<table >
	<tr bgcolor="pink">
		<td rowspan="6">
		<img src="<c:url value="/resources/images/${ProductInfo.productId}.jpg"/>" width="200" height="200"/>
		</td>
		<td>Product ID</td>
		<td>${ProductInfo.productId}</td>
	</tr>
	<tr bgcolor="pink">
		<td>Price</td>
		<td>Rs ${ProductInfo.price}</td>
	</tr>
	<tr bgcolor="pink">
		<td>Product Name</td>
		<td>${ProductInfo.productName}</td>
	</tr>
	<tr bgcolor="pink">
		<td>Category Name</td>
		<td>${categoryName}</td>
	</tr>
	<tr bgcolor="pink">
		<td>Supplier Name</td>
		<td>${ProductInfo.supplierId}</td>
	</tr>
	<tr bgcolor="pink">
		<td>Product Description</td>
		<td>${ProductInfo.prodDesc}</td>
	</tr>
	<tr>
	   <td colspan="2">
	   <form action="<c:url value="/addtoCart/${ProductInfo.productId}"/>"/>
	<table>
	<tr>
		<td>Quantity</td>
		<td>
		<select name="quantity">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		</td>
		<td>
		<input type="submit" value="AddToCart" class="btn btn-danger btn-block"/>
		</td>
	</tr>
</table>
</form>
</td>
</tr>
</body>
</html>



