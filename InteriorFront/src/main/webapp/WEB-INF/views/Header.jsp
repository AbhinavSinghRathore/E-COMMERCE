<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<link rel="stylesheet" href="<c:url value="/resources/css/carousel.css"/>"/>

</head>
<body>

  <header>
 
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">My Shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="nav navbar-nav mr-auto">
         	<c:if test="${role!='[ROLE_ANONYMOUS]'}">
         	 <li><a class="nav-link" href="#">Logged in as ${pageContext.request.userPrincipal.name}</a></li>
         	</c:if>
         <c:if test="${role=='[ROLE_ANONYMOUS]'}">
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/login">Login</a></li>
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/register">Register</a></li>
            </c:if>
         
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
         
         <c:if test="${role=='[ROLE_ADMIN]'}">
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/category">Category</a></li>
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/product">Product</a></li>
            </c:if>
         
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/productPage">ProductPage</a></li>
            
         
         <c:if test="${role!='[ROLE_ANONYMOUS]'}">
            <li><a class="nav-link"  href="${pageContext.request.contextPath}/perform_logout">Logout</a></li>
             </c:if>
              </ul>
        </div>
      </nav>
    </header>
  