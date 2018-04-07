<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>

<div class="cont">
<h3 align="center">SupplierPage</h3>



<form:form action="InsertSupplier" method="post" commandName="supplierInfo">
<table align="center" class="table table-hover success">
<tr><td>Supplier Name</td>

<td><form:input path="supplierName"/></td>
<td> <form:errors path="supplierName"></form:errors>
</td>


</tr>

<tr><td>Supplier Desc</td>

<td><form:input path="supplierDesc"/>
<td> <form:errors path="supplierDesc"></form:errors>
</td>
</tr>
<tr>
<td colspan="2"><input type="submit" class="btn btn-primary" value="SUBMIT"/></td>
<td><a href="/InteriorFront/supplier" class="btn btn-primary">Reset</a></td>
<td>
</tr>
</table>



</form:form>

<table align="center" class="table table-hover primary" cellspacing="10PX">
<tr>
<td>SupplierID </td>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td> Supplier Name </td>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td> Supplier Desc </td>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td>Operations</td>
</tr>

<c:forEach items="${listSuppliers}" var="supplier">

<tr>

<td>${supplier.supplierId}</td>
<td>${supplier.supplierName}</td>
<td>${supplier.supplierDesc}</td>
<td><a href="<c:url value="/updateSupplier/${supplier.supplierId}"/>">Update</a>/
				
				<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>">Delete</a>
</tr>
</c:forEach>
</table>
</div>

