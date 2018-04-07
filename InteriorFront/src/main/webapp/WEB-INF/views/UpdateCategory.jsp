<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<div class="cont">
 
<h3 align="center">Update Categories</h3>

<!-- Spring form tag access to the command name object which is mdl cmpnt ob and it can b dfnd as java bean tht stores the user i/p usually entered through html form,it helps to construct view -->

<form:form action="${pageContext.request.contextPath}/UpdateCategory" method="post" commandName="categoryInfo">

<table align="center" class="table table-hover success">

 <!-- commandName attribute specifies that model attribute name which contains a backing object and the properties of this object will b used to populate generated form -->

<!-- form:input- will have the path attribute which specifies the property name of the bean which is attached to this form -->


<tr>
	<td>Category ID</td>
	
	
	<td><form:input path="categoryId" disabled="disabled"/></td>
</tr>
<tr>
	<td>Category Name</td>
	<td><form:input path="categoryName"/></td>
</tr>
<tr>
	<td>Category Desc</td>
	<td><form:input path="cateogryDesc"/></td>
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
</div>

