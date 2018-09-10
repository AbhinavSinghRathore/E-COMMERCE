<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="Header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
     
     table,td{
               border:3px solid red;
        
        }
        td{
             padding:2px;
             text-align:center;
             }
     </style>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container mt-3">
		<h2>Toggleable Tabs</h2>
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#profile">Profile</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#orderhistory">Order History</a></li>

		</ul>

		<!-- Tab panes -->
		<div class="info" style="margin: auto;">
                    
                    <div class="tab-content">
			<div id="profile" class="container tab-pane active">
				<br>
				<h3><center>Profile</center></h3>
				<table style="margin:auto;" >
					<tr>
						<td><strong>Name- </strong></td>
						<td>${user.username}</td>
					</tr>

					<tr>
						<td><strong>Email-Id-</strong> </td>
						<td>${user.emailId}</td>
					</tr>

					<tr>
						<td><Strong>Mobile-No- </Strong></td>
						<td>${user.mobileNo}</td>
					</tr>
				</table>
                </div>
               <center> <div class="bottom">
                    <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/webmaniac">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a class="btn btn-danger btn-sm" rel="publisher"
                       href="https://plus.google.com/+ahmshahnuralam">
                        <i class="fa fa-google-plus"></i>
                    </a>
                    <a class="btn btn-primary btn-sm" rel="publisher"
                       href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a class="btn btn-warning btn-sm" rel="publisher" href="https://plus.google.com/shahnuralam">
                        <i class="fa fa-behance"></i>
                    </a>
                </div></center>
            </div>

        </div>

	</div>
</div>
		
			<div id="orderhistory" class="container tab-pane fade">
				<br>
				<h3>Order History</h3>
				<div class="row">
					<h2 class="sub-head-w3ls"
						style="font-family: cursive; background-color: cyan; border: 2px solid pink; border-radius: 15px;">See
						What You Purchased</h2>
				</div>
				<div class="row"
					
					align="center">
					<div class="col-4" style="border: 2px solid pink; background-color: pink; border: 2px solid pink; border-radius: 15px;">
						<div class="row">
							<div class="col-4">
								<label>Product Image</label>
							</div>
							<div class="col-4">
								<label>Product Name</label>
							</div>
							<div class="col-4">
								<label>Quantity</label>
							</div>
						</div>
					</div>

					<div class="col-4" style="border: 2px solid pink; background-color: pink; border: 2px solid pink; border-radius: 15px;">
						<div class="row">

							<div class="col-4">
								<label>Product Price</label>
							</div>
							<div class="col-4">
								<label>Supplier</label>
							</div>
							<div class="col-4">
								<label>Product Description</label>
							</div>
						</div>
					</div>

					<div class="col-4" style="border: 2px solid pink; background-color: pink; border: 2px solid pink; border-radius: 15px;">
						<div class="row">

							<div class="col-4">
								<label>Order Id</label>
							</div>
							<div class="col-4">
								<label>Date</label>
							</div>
							<div class="col-4">
								<label>Shippment Address</label>
							</div>


						</div>
					</div>




					<c:forEach items="${mapList}" var="map">
						
							<c:forEach items="${map.value}" var="prod">
								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<img style="width: 100px; height: 100px;"
												src="<c:url value="/resources/images/${prod.productId}.jpg" />" />
										</div>
										<div class="col-4">
											<label>${prod.productName}</label>
										</div>
										<div class="col-4">
											<label>${fn:length(map.value)}</label>
										</div>
									</div>
								</div>

								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<label>${prod.price}</label>
										</div>
										<div class="col-4">
											<label>${prod.supplierId}</label>
										</div>
										<div class="col-4">
											<label>${prod.prodDesc}</label>
										</div>
									</div>
								</div>

								<div class="col-4">
									<div class="row">
										<div class="col-4">
											<label>${map.key.orderId}</label>
										</div>
										<div class="col-4">
											<label>${map.key.orderDate}</label>
										</div>
										<div class="col-4">
											<label>${map.key.shippingAddress}</label>
										</div>

									</div>
								</div>
							</c:forEach>
						
					</c:forEach>
				</div>
			</div>
		</div>
</div>
</body>
</html>