<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>-->
<div class="cont">

	<h3 align="center">Product Description</h3>
	<center>
		<table class="table table-hover success">
			<tr>
				<td rowspan="6"><img
					src="<c:url value="/resources/images/${ProductInfo.productId}.jpg"/>"
					width="200" height="200" /></td>
				<td>Product ID</td>
				<td>${ProductInfo.productId}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>Rs ${ProductInfo.price}</td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td>${ProductInfo.productName}</td>
			</tr>
			<tr>
				<td>Category Name</td>
				<td>${categoryName}</td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td>${suppliername}</td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td>${ProductInfo.prodDesc}</td>
			</tr>
			<tr>
				<td colspan="2">
					<form action="<c:url value="/addtoCart/${ProductInfo.productId}"/>" />
					<table>
						<tr>
							<td>Quantity</td>
							<td><select name="quantity">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
							</select></td>
							<td><input type="submit" value="AddToCart"
								class="btn btn-primary" /></td>
						</tr>
					</table>
					</form>

				</td>
			</tr>

		</table>
	</center>

</div>

<%@include file="footer.jsp"%>