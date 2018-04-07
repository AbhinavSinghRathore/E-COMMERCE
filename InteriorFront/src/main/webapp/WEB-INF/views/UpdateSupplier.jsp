<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<div class="cont">

<h3 align="center">Supplier Page</h3>
<form:form action="${pageContext.request.contextPath}/UpdateSupplier" method="post" commandName="supplierInfo">
<table align="center" class="table table-hover success">
<tr>
<td colspan="2">Update Supplier</td>
</tr>
<tr>
	<td>Supplier ID</td>
	
	<td><form:input path="supplierId" disabled="disabled"/></td>
</tr>
<tr>
	<td>Supplier Name</td>
	<td><form:input path="supplierName"/></td>
</tr>
<tr>
	<td>Supplier Desc</td>
	<td><form:input path="supplierDesc"/></td>
</tr>
<tr>
	<td colspan="2"><center>
	<input type="submit" value="Update"/>
	<input type="reset" value="RESET"/>
	</center></td>
</tr>
</table>
</form:form>

<table align="center" class="table table-hover success">
	<tr>
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listSuppliers}" var="Supplier">
	<tr>
		<td>${Supplier.supplierId}</td>
		<td>${Supplier.supplierName}</td>
		<td>${Supplier.supplierDesc}</td>
		<td>
		<a href="<c:url value="/updateSupplier/${Supplier.supplierId}"/>">Update</a>/
		<a href="<c:url value="/deleteSupplier/${Supplier.supplierId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>
</div>


