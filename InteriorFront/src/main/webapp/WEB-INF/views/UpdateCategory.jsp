<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>

<h3 align="center">Category Page</h3>
<form:form action="${pageContext.request.contextPath}/UpdateCategory" method="post" commandName="categoryInfo">
<table align="center">
<tr bgcolor="pink">
<td colspan="2">Update Category</td>
</tr>
<tr bgcolor="cyan">
	<td>Category ID</td>
	
	<td><form:input path="categoryId" disabled="disabled"/></td>
</tr>
<tr bgcolor="cyan">
	<td>Category Name</td>
	<td><form:input path="categoryName"/></td>
</tr>
<tr>
	<td>Category Desc</td>
	<td><form:input path="cateogryDesc"/></td>
</tr>
<tr bgcolor="cyan">
	<td colspan="2"><center>
	<input type="submit" value="Update"/>
	<input type="reset" value="RESET"/>
	</center></td>
</tr>
</table>
</form:form>

<table align="center">
	<tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${listCategories}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.cateogryDesc}</td>
		<td>
		<a href="<c:url value="/updateCategory/${category.categoryId}"/>">Update</a>/
		<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>

</body>
</html>
