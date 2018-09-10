<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="cont">

	<h3 align="center">Products</h3>

	<div class="row">
		<div class="col-sm-2">
			<h3>Price Filter</h3>
			<form action="${pageContext.request.contextPath}/filterBy">

				<select name="price" onchange="this.form.submit()">
					<option value="0">----Select----</option>
					<option value="1">Rs 5000 to 10000</option>
					<option value="2">Rs 10000 to 20000</option>
					<option value="3">Rs 20000 to 30000</option>
					<option value="4">Rs 30000 to 40000</option>
					<option value="5">Above Rs 40000</option>
				</select>
			</form>
		</div>
		<div class="col-sm-10">

			<c:set var="i" value="1" />
			<div class="row">
				<c:forEach items="${listProducts}" var="product">
					<div class="card" style="width: 18rem;">

						<div class="card-body" align="center">
							<a href="<c:url value="/productDesc/${product.productId}"/>">
								<img class="card-img-top"
								src="<c:url value="/resources/images/${product.productId}.jpg"/>"
								width="275" height="225" />
							<center>${product.productName}</center>
							</a>
							<center>
								<i class="fa fa-inr"></i> ${product.price}
							</center>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a
								href="<c:url value="/addtoCart/${product.productId}?quantity=1"/>"
								class="btn btn-primary"><center>AddToCart</center></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@include file="footer.jsp"%>