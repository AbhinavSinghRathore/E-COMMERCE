<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<div class="cont">
<h3 align="center">Product Page</h3>
<form:form action="${pageContext.request.contextPath}/UpdateProduct" method="post" commandName="productInfo" enctype="multipart/form-data">


<table align="center" class="table table-hover success">
	<tr><td colspan="2">Update Product</td></tr>
	
	<tr>
	<td>Category ID</td>
	
	<td><form:input path="categoryId" disabled="disabled"/></td>
</tr>
	
	<tr>
	<td>Product ID</td>
	
	<td><form:hidden path="productId" /></td>
</tr>
<tr>
	<td>Product Name</td>
	<td><form:input path="productName"/></td>
</tr>
<tr>
		<td>Product Image</td>
		<td><input type="file" name="pimage"/></td>
	</tr>
	
	<tr>
	    <td>Supplier</td>
	    
	    <td>
	<form:select path="supplierId">
	<form:option value="0" label="---select---"/>
	<form:options items="${suplist}"/>
	</form:select>
	
	</td>
	    </tr>
<tr>
	<td>Product Description</td>
	<td><form:input path="prodDesc"/></td>
</tr>

<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
		</tr>
		
		<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
		</tr>
		
		<tr>
		    <td>Supplier</td>
		    <td><form:input path="supplierId"/></td>
		     </tr>
		    

	<td colspan="2"><center>
	<input type="submit" value="Update"/>
	<input type="reset" value="RESET"/>
	</center></td>
</tr>
</table>
</form:form>

<table align="center" class="table table-hover success">
	<tr>
	<td>Category ID</td>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product Description</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Supplier Id</td>
		
		
		<td>Operation</td>
	</tr>
	<c:forEach items="${listProducts}" var="product">
	<tr>
	  <td>${product.categoryId}</td>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.supplierId}</td>
		<td>
		<a href="<c:url value="/updateCategory/${product.productId}"/>">Update</a>/
		<a href="<c:url value="/deleteCategory/${product.productId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>
</div>

