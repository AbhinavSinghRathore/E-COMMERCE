<!DOCTYPE html>

<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <link rel="stylesheet"  href="<c:url value="/resources/css/lightslider.css"/>"/>
    <style>
    	ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
        .demo .item{
            margin-bottom: 60px;
        }
		.content-slider li{
		   
		    text-align: center;
		    color: #FFF;
		}
		.content-slider div {
		    margin: 0;
		   
		   
		}
		.demo{
			
			width: 750px;
			
			
		}
		 
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/lightslider.js"/>"></script> 
    <script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:6,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
		});
    </script>
</head>
<body>
<div class="container-fluid row">
	<div class="col-md-9">
	  <div><h3>Today's Deals</h3></div>
      
        <div class="item">
            <ul id="content-slider" class="content-slider">
                <c:forEach items="${listProducts}" var="product">
		<li>
		<div class="card" style="width: 14rem;">
 
  <div class="card-body" align="center">
    <a href="<c:url value="/productDesc/${product.productId}"/>" >
      <img class="card-img-top" src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="120" height="180" /><center>${product.productName}</center>
      <c:set var="discount" value="${product.price-product.price*0.2}"/> 
    </a><a href="#" style="text-decoration:none;color:Black;cursor:text"> <center><i class="fa fa-inr"><strike>${product.price}</strike></i>&nbsp;-&nbsp;<i class="fa fa-inr">${discount}</i> </center></a>
    <a href="<c:url value="/addtoCart/${product.productId}?quantity=1"/>"class="btn btn-primary"><center>AddToCart</center></a>
    
  </div>
</div></li>
		</c:forEach>
                
                 
                
                
            </ul>
            
        </div>
 
			
		</div>
 
   <div class="col-md-3" style="margin-top:40px;background:white;">
   		<img class="card-img-top" src="<c:url value="/resources/images/Advertisment.jpg"/>" width="120" height="180" />
   </div> 
  </div>
  
  
          <div class="container-fluid row">
	<div class="col-md-9">
	  <div><h3>Today's Deals</h3></div>
      
        <div class="item">
            <ul id="content-slider" class="content-slider">
                <c:forEach items="${listProducts}" var="product">
		<li>
		<div class="card" style="width: 14rem;">
 
  <div class="card-body" align="center">
    <a href="<c:url value="/productDesc/${product.productId}"/>" >
      <img class="card-img-top" src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="120" height="180" /><center>${product.productName}</center>
      <c:set var="discount" value="${product.price-product.price*0.2}"/> 
    </a><a href="#" style="text-decoration:none;color:Black;cursor:text"> <center><i class="fa fa-inr"><strike>${product.price}</strike></i>&nbsp;-&nbsp;<i class="fa fa-inr">${discount}</i> </center></a>
    <a href="<c:url value="/addtoCart/${product.productId}?quantity=1"/>"class="btn btn-primary"><center>AddToCart</center></a>
    
  </div>
</div></li>
		</c:forEach>
                
                 
                
                
            </ul>
            
        </div>
 
			
		</div>
 
   <div class="col-md-3" style="margin-top:40px;background:white;">
   		<img class="card-img-top" src="<c:url value="/resources/images/Advertisment.jpg"/>" width="120" height="180" />
   </div> 
  </div>
  
</body>
</html>