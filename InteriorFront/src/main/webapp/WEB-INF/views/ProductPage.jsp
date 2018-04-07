<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="cont">

<h3 align="center">Products</h3>
<div class="container">
<form action="${pageContext.request.contextPath}/searchBy">
<input id="ex13" type="text" style="margin-left:30px;" name="search" data-slider-ticks="[0, 10000, 20000, 30000, 90000]" data-slider-ticks-snap-bounds="30" data-slider-ticks-labels='["$0", "$10000", "$20000", "$30000", "$90000"]'/>
<input type="submit" class="btn btn-info" style="margin-left:30px;" value="Add Filter"/>
</form>
</div>

<table align="center" class="table">
	<!--  <tr class="danger">
		<td colspan="3">Product Detail</td>	
	</tr>-->
	
	<tr class="info">
	<c:set var="i" value="1"/>
<c:forEach items="${listProducts}" var="product">
	
		<td align="center">
	
			 <img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="275" height="225"/>
			<br/>
			<a href="<c:url value="/productDesc/${product.productId}"/>">${product.productName}</a>
			<br/>. ${product.price} /-
			
		</td>
		<c:if test="${i%3==0}" >
		</tr>
		<tr>
		</c:if>
	
<c:set var="i" value="${i+1}"/>
</c:forEach>

	</tr>
</table>
</div>
<%@include file="footer.jsp"%>