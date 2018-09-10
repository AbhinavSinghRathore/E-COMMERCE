 
 <html>
 
 <head>
    <!-- Required meta tags -->

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<style type="text/css">
input[type="text"]:focus { 
  border-color: #ffca28;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #ffca28;
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #ffca28;
}  
</style>
  
  </head>
  <body>
  
    <h2 align="center" style="margin-top:7px;"> <a href="${pageContext.request.contextPath}/"><i>People<span style="color:#ff9800;">Choice</span></i></a></h2>
<form action="perform_login" method="post">
   <div class="container col-4" style="border:1px solid grey;border-radius: 14px;padding:41px;">
      <div class="row">
          <h4  class="col-12">Login</h4>
			<span class="text-danger">${Message}</span>          
      </div>
      
    <div class="row">
       
          <label class="form-group"> User Name:</label>
          
          <input class="form-control" style="padding:10px; height:35px;" type="text" name="username" required/>
           
 </div>


      <div class="row">
       
          <label class="form-group"> Password:</label>

          <input class="form-control" style="padding:10px; height:35px;" type="password" name="password" required/>
     </div>
       <br>

           <div class="row">

                 <input class="form-control" style="background-color:orange;"  type="submit" value="continue"/>
       </div>
       <br>
       <a class="text-white btn btn-danger" href="forgetpassword">Forget Password.</a>
       <br>
       <br>
       <div class="row">
            <a class="btn btn-light form-control" href="${pageContext.request.contextPath}/register">-------New To PeopleChoice-----</a></p>
        </div>

     </div>
   </form>
   </body>
   </html>

