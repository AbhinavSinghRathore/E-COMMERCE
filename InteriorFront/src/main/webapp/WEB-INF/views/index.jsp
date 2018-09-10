<%@include file="/WEB-INF/views/Header.jsp"%>
<head>
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
<link href="//netdna.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- ---- Include the above in your HEAD tag -------- -->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<body>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<c:set var="i" value="0" />
	<div class="carousel-inner">
	<c:forEach items="${catList}" var="category">

		
			<c:if test="${i==0}">

				<div class="carousel-item active">
					<img class="first-slide" src="<c:url value="/resources/images/banner/${category.categoryId}.jpg"/>" alt="First slide" style="height: 25rem; width:100%" />
					<div class="container">
						<div class="carousel-caption">
						
							<h1 style="color:#006064"><strong>Trending</strong> ${category.categoryName}.</h1>
							<p>${category.cateogryDesc}.</p>
							
							<p>
								<a class="btn btn-lg btn-primary" href="<c:url value="/${category.categoryId}/Trending"/>" role="button">Shop Now</a>
							</p>
							
						</div>
					</div>
				</div>
			</c:if>

			<c:if test="${i==1}">
				<div class="carousel-item">
					<img class="second-slide" src="<c:url value="/resources/images/banner/${category.categoryId}.jpg"/>" alt="second slide" style="height: 25rem;width:100%" />
					<div class="container">
						<div class="carousel-caption">
							<h1>Trending ${category.categoryName}.</h1>
							<p>${category.cateogryDesc}.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="<c:url value="/${category.categoryId}/Trending"/>" role="button">Shop Now</a>
							</p>
						</div>
					</div>
				</div>
			</c:if>
			<c:if test="${i==2}">

				<div class="carousel-item">
					<img class="third-slide" src="<c:url value="/resources/images/banner/${category.categoryId}.jpg"/>" alt="third slide" style="height: 25rem;width:100%" />
					<div class="container">
						<div class="carousel-caption">
							<h1>Trending ${category.categoryName}.</h1>
							<p>${category.cateogryDesc}.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="<c:url value="/${category.categoryId}/Trending"/>" role="button">Shop Now</a>
							</p>
						</div>
					</div>
				</div>
			</c:if>

		
		<c:set var="i" value="${i+1}" />
	</c:forEach>
	</div>
	<a class="carousel-control-prev" href="#myCarousel" role="button"
		data-slide="prev"> <span class="carousel-control-prev-icon"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="carousel-control-next" href="#myCarousel" role="button"
		data-slide="next"> <span class="carousel-control-next-icon"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>



<%@include file="productSlider.jsp" %>

       
</body>
<%@include file="footer.jsp"%>