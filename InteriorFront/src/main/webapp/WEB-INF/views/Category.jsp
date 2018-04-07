<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp"%>

	


	<form:form action="InsertCategory" method="post"
		commandName="categoryInfo" >
		<div class="container-fluid well cont">
		<h3 align="center">CategoryPage</h3>
		
		<table align="center" border="5" class="table table-hover success">
			<tr>
				<td>Category Name</td>

				<td><form:input path="categoryName" /></td>
				<td><form:errors path="categoryName"></form:errors></td>


			</tr>

			<tr>
				<td>Category Desc</td>

				<td><form:input path="cateogryDesc" />
				<td><form:errors path="cateogryDesc"></form:errors></td>
			</tr>
			<tr  align="center">
				<td colspan="3"><input type="submit" class="btn btn-info" value="Submit" style="height:35;width=100;" />
				<a href="/InteriorFront/category" class="btn btn-info" style="height:35;width=100;">Reset</a></td>
			</tr>
		</table>
</div>


	</form:form>

<div class="container-fluid well">
	<table align="center"  border="5" class="table table-hover"
		cellspacing="10PX">
		<thead>
		
	<tr bgcolor="#651fff ">
	
			<td>CategoryID</td>&nbsp;&nbsp;
			<td>Category Name</td>&nbsp;&nbsp;
			<td>Category Desc</td>&nbsp;&nbsp;
			<td>Operations</td>
		</tr>
		</thead>
		
		<!-- c for each for looping the data -->

		<c:forEach items="${listCategories}" var="category">

			<tr>

				<td>${category.categoryId}</td>
				<td>${category.categoryName}</td>
				<td>${category.cateogryDesc}</td>
				<td><a
					href="<c:url value="/updateCategory/${category.categoryId}"/>"><strong>Update</strong></a>&nbsp;/&nbsp;

					<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"><strong>Delete</strong></a>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</div>

