<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<link rel="stylesheet" href="<c:url value="/resources/css/carousel.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/bootswatch.min.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-slider.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>"/>
 


</head>
<body >

  <header>
 
      <nav class="navbar navbar-expand-md navbar-info fixed-top bg-dark navbar-inverse">
      
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" background-color="white" id="navbarCollapse">
          <ul class="nav navbar-nav mr-auto">
          <li><a class="navbar-brand text-white" href="${pageContext.request.contextPath}/"><strong>PeopleChoice</strong></a></li>
         	<c:if test="${role!='[ROLE_ANONYMOUS]'}">
         	 <li><a class="nav-link text-white"  href="#">Logged in as ${pageContext.request.userPrincipal.name}</a></li>
         	</c:if>
         <c:if test="${role=='[ROLE_ANONYMOUS]'}">
            <li class="nav-item"><a class="nav-link text-white" background-color="!important white"  href="${pageContext.request.contextPath}/login"><strong>Login</strong></a></li>
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/register"><strong>Register</strong></a></li>
            </c:if>
         
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/aboutus"><strong>About Us</strong></a></li>
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/contactus"><strong>Contact Us</strong></a></li>
         
         <c:if test="${role=='[ROLE_ADMIN]'}">
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/category"><strong>Category</strong></a></li>
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/product"><strong>Product</strong></a></li>
          <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/supplier"><strong>Supplier</strong></a></li>
            </c:if>
        <li>    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   <b> <sup>Shop by</sup> Category</b>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  <c:forEach var="cat" items="${catlist1}">
   <a class="dropdown-item" href="${pageContext.request.contextPath}/Products/${cat.categoryId}">${cat.categoryName}</a>
  </c:forEach>
  </div>
</div></li>
         
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/productPage"><strong>Products</strong></a></li>
            
            
         
         <c:if test="${role!='[ROLE_ANONYMOUS]'}">
            <li><a class="nav-link text-white"  href="${pageContext.request.contextPath}/perform_logout"><strong>Logout</strong></a></li>
             </c:if>
              </ul>
              
    
</div>
        </div>
      </nav>
    </header>
  