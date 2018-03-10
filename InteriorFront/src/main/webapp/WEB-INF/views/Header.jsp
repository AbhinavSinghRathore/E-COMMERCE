<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#upperLabel
{
background-color:orange;
}
</style>
</head>
<body>

<div id="upperLabel" class="container-fluid">
  <label>Social Icon</label>
  </div>
  
  <div class="container">
  
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
         <div class"navbar-header">
           <a class="navbar-brand" href="${pageContext.request.contextPath}/#">Home Interior</a>
         </div>   
         <ui class="nav navbar-nav">
         	<c:if test="${pageContext.request.userPrincipal.name!=null}">
         	 <li><a href="#">Logged in as ${pageContext.request.userPrincipal.name}</a></li>
         	</c:if>
         <c:if test="${pageContext.request.userPrincipal.name==null}">
            <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
            <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
            </c:if>
            <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
            <li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
            <li><a href="${pageContext.request.contextPath}/category">Category</a></li>
            <li><a href="${pageContext.request.contextPath}/product">Product</a></li>
            <li><a href="${pageContext.request.contextPath}/productPage">ProductPage</a></li>
            <li><a href="${pageContext.request.contextPath}/updateProduct">Manage Product</a></li>
         <c:if test="${pageContext.request.userPrincipal.name!=null}">
            <li><a href="${pageContext.request.contextPath}/perform_logout">Logout</a></li>
             </c:if>
              <ui>
           </div>
       </nav>
    </div>


</body>
</html>