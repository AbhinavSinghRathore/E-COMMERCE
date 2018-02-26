<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>

<h3 align="center">Manage Page</h3>
<c:if test="${product!=null}">
<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">


<table align="center">
	<tr bgcolor="pink"><td colspan="2">Product Detail</td></tr>
	
	<tr> 
	<td>Product Name</td>
	<td><form:input path="productName"/></td>
	</tr>
	
	<tr>
	<td>Category</td>
	<td>
	<form:select path="categoryId">
	<form:option value="0" label="---select---"/>
	<form:options items="${catlist}"/>
	</form:select>
	
	</td>
	</tr>
	
	<tr>
		<td>Product Image</td>
		<td><input type="file" name="pimage"/></td>
	</tr>
	
	<tr bgcolor="pink">
	    <td>Supplier</td>
	    <td><form:input path="supplierId"/></td>
	    </tr>
	    
	    <tr>
	    <td>Price</td>
	    <td><form:input path="price"/></td>
	    </tr>
	    
	    <tr bgcolor="pink">
	    <td>Stock</td>
	    <td><form:input path="stock"/></td>
	    </tr>
	    
	    <tr>
	    <td>Product Desc</td>
	    <td><form:input path="prodDesc"/></td>
	    </tr>
	    
	    <tr bgcolor="pink">
	    
	     <td colspan="2">
	     <center><input type="submit" value="SUBMIT"/></center>
	     </td>
	     
	     </tr>
	     
 </table>
 </form:form>
 </c:if>
<table align="center">
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product Desc</td>
		<td>Category Id</td>
		<td>Supplier Id</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listProducts}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		
		<td>
		<a href="<c:url value="/updateProduct/${product.productId}"/>">Update</a>/
		<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>

</body>
</html>
