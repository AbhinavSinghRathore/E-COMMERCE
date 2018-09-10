<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"
	integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg"
	crossorigin="anonymous">
	
	<!--  CDN v r using for implementing BS min.js-"basically removes all the dcmntd codes and spaces this will b used in production envrionment --> "


<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<link rel="stylesheet" href="<c:url value="/resources/css/productStyle.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
<%-- <link rel="stylesheet"
	href="<c:url value="/resources/css/bootswatch.min.css"/>" /> --%>
	<link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
	
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-slider.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />
<style>
#menu>li>a:hover {
	/* border:0.5px solid #fafafa ; */
	background: #000;
}
</style>


</head>
<body>

	<header>


		<nav
			class="navbar navbar-expand-md navbar-info fixed-top bg-dark navbar-inverse">


			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse row" background-color="white"
				id="navbarCollapse">

				<ul class="nav navbar-nav mr-auto col-12" style="height: 31px">
					<li class="col-4 text-white">B</li>

					<li class="col-4">
						<form action="${pageContext.request.contextPath}/searchBy"
							method="get">
							<div class="col-auto">

								<div class="input-group mb-2">

									<input type="text" class="col-10" name="search" placeholder="search products" />
									<div class="input-group-prepend">
										<div class="input-group-text">
											<a href="#" class="fas fa-search text-warning"></a>
										</div>
									</div>
								</div>
							</div>
						</form>

					</li>
					<li class="col-4 text-white">A</li>
				</ul>
				<ul class="nav navbar-nav mr-auto" id="menu">

					<li><a class="navbar-brand text-white"
						href="${pageContext.request.contextPath}/"><strong>People<span
								style="color: #ff9800;">Choice</span></strong></a></li>
					<c:if test="${role!='[ROLE_ANONYMOUS]'}">
						<li><a class="nav-link text-white" href="#">Logged in as
								${pageContext.request.userPrincipal.name}</a></li>
					</c:if>
					<%-- <c:if test="${role=='[ROLE_ANONYMOUS]'}">
						 <li class="nav-item"><a class="nav-link text-white" background-color="!important white"  href="${pageContext.request.contextPath}/login"><strong>Login</strong></a></li>
						<li><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/register">Register</a></li>
					</c:if> --%>

					<li><a class="nav-link text-white"
						href="${pageContext.request.contextPath}/aboutus"><strong>About
								Us</strong></a></li>
					<li><a class="nav-link text-white"
						href="${pageContext.request.contextPath}/contactus"><strong>Contact
								Us</strong></a></li>



					<c:if test="${role=='[ROLE_ADMIN]'}">
						<li><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/category"><strong>Category</strong></a></li>
						<li><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/product"><strong>Product</strong></a></li>
						<li><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/supplier"><strong>Supplier</strong></a></li>
					</c:if>
					<li>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								<b> <sup>Shop by</sup> Category
								</b>
							</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<c:forEach var="cat" items="${catlist1}">
									<a style="background-color:black; color:white;" class="dropdown-item"
										href="${pageContext.request.contextPath}/Products/${cat.categoryId}">${cat.categoryName}</a>
								</c:forEach>
							</div>
						</div>
					</li>

					<li><a class="nav-link text-white"
						href="${pageContext.request.contextPath}/productPage"><strong>Products</strong></a></li>



					<c:if test="${role!='[ROLE_ANONYMOUS]'}">
						<li><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/perform_logout"><strong>Logout</strong></a></li>
					</c:if>
				</ul>
				<ul class="nav navbar-nav pull-right">

					<c:if test="${role=='[ROLE_ANONYMOUS]'}">
						<li class="nav-item"><a class="nav-link text-white"
							href="${pageContext.request.contextPath}/login"><span
								style="font-size: 20px; margin-right: 10px;"
								class="fas fa-user-circle text-white"></span><strong>Signup/Login</strong></a></li>
					</c:if>
					<li><a class="nav-link text-white"
						href="${pageContext.request.contextPath}/Cart"> <img
							src="<c:url value="/resources/images/cart2 copy (1).png"/>"
							style="height: 40px;" title="my cart"> <!-- 
								<span style="color: tomato;">My Cart</span>
							 -->

					</a></li>
					<li><a class="nav-link text-white"
						href="${pageContext.request.contextPath}/myprofile">My Profile

					</a></li>

				</ul>




			</div>

		</nav>

	</header>
	<div class="cont">