
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
 
 
 
 </body>
 </html>	     