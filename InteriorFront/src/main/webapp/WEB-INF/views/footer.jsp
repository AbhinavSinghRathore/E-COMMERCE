<head>

<script type="text/javascript">
$(document).ready(function() {
    var autoplaySlider = $('#autoplay').lightSlider({
        auto:true,
        loop:true,
        pauseOnHover: true,
        onBeforeSlide: function (el) {
            $('#current').text(el.getCurrentSlideCount());
        } 
    });
    $('#total').text(autoplaySlider.getTotalSlideCount());
});
</script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
</div>
<script src="<c:url value="/resources/js/bootstrap-slider.js"/>"></script>
<script type="text/javascript"></script>
<script src="<c:url value="/resources/js/myApp.js"/>"></script>

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">
</head>
<footer>

	<!-- <div class="search-text"> 
            <div class="container">
                <div class="row text-center">
                 
                   <div class="col-lg-12">
                       <h4>SIGN UP TO OUR NEWSLETTER</h4>
                        <form id="search-form" class="form-search form-horizontal">
                            <input type="text" class="input-search" placeholder="Email Address">
                            <button type="submit" class="btn-search">SUBMIT</button>
                        </form>
                    </div>
                
                </div>         
            </div>     
        </div> -->

	<div class="footer-top">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://facebook.com" target="_blank"><i
						class="fa fa-facebook fa-2x"></i>Facebook</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://Twitter.com" target="_blank"><i
						class="fa fa-twitter fa-2x"></i>Twitter</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://flickr.com" target="_blank"><i
						class="fa fa-flickr fa-2x"></i>Flickr</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://tumblr.com" target="_blank"><i
						class="fa fa-tumblr fa-2x"></i>Tumblr</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://instagram.com" target="_blank"><i
						class="fa fa-instagram fa-2x"></i>Instagram</a>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 text-center">
					<a href="https://google.com" target="_blank"><i
						class="fa fa-google-plus fa-2x"></i>Google</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="border-top: 1px solid grey;">
		<div class="row text-center">
			<div class="col-lg-12 col-lg-offset-3">
				<ul class="menu">

					<li><a href="#">Home</a></li>

					<li><a href="#">About</a></li>

					<li><a href="#">Blog</a></li>

					<li><a href="#">Gallery</a></li>

					<li><a href="#">Contact</a></li>

				</ul>
			</div>
		</div>
	</div>

</footer>


<div class="copyright">
	<div class="container">

		<div class="row text-center">
			<p class="col-lg-12"><strong>Copyright © 2018 All rights reserved</strong></p>
		</div>

	</div>
</div>



