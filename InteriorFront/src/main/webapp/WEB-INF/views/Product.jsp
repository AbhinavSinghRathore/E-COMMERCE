
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h3 align="center">Product Page</h3>

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
	    
	    <td>
	<form:select path="supplierId">
	<form:option value="0" label="---select---"/>
	<form:options items="${suplist}"/>
	</form:select>
	
	</td>
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
 
 <table align="center" cellspacing="2%">
<tr>
<td>ProductID </td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td> Product Name </td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td> Product Desc</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>categoryId</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>supplierId</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>Product price</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>Product stock</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>Product views</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td>Operations</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</tr>

<c:forEach items="${listProduct}" var="product">

<tr>

<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.prodDesc}</td>
<td>${product.categoryId}</td>
<td>${product.supplierId}</td>
<td>${product.price}</td>
<td>${product.stock}</td>
<td>${product.views}</td>
<td><a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
</tr>
</c:forEach>
</table>
 
 </body>
 </html>   