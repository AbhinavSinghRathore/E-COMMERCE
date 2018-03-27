<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>


<h3 align="center">CategoryPage</h3>



<form:form action="InsertCategory" method="post" commandName="categoryInfo">
<table align="center">
<tr><td>Category Name</td>

<td><form:input path="categoryName"/></td></tr>
<tr><td>Category Desc</td>

<td><form:input path="cateogryDesc"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" class="btn btn-primary" value="SUBMIT"/></td>
<td><a href="/InteriorFront/category" class="btn btn-primary">Reset</a></td>
<td>
</tr>
</table>



</form:form>

<table align="center" cellspacing="2%">
<tr>
<td>CategoryID </td>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td> Category Name </td>>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td> Category Desc </td>>&nbsp&nbsp&nbsp&nbsp&nbsp;
<td>Operations</td>
</tr>

<c:forEach items="${listCategories}" var="category">

<tr>

<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.cateogryDesc}</td>
<td><a href="<c:url value="/updateCategory/${category.categoryId}"/>">Update</a>/
				
				<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
</tr>
</c:forEach>
</table>

</body>
</html>