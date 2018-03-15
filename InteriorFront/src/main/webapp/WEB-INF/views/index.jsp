<%@include file="/WEB-INF/views/Header.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="<c:url value="/resources/images/8-spectacular-jquery-slider-plugins.jpg"/>" alt="First slide" style="height:25rem;">
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="<c:url value="/resources/images/Dian-2-1024x683.jpg"/>" alt="Second slide" style="height:25rem;">
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="<c:url value="/resources/images/chuttersnap-176805-unsplash.jpg"/>" alt="Third slide" style="height:25rem;">           
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
<%@include file="footer.jsp"%>