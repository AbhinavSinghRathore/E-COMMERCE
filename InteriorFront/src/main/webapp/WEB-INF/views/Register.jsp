<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <head>
<body>



<div class="cont">
<form:form action="Register" method="post" commandName="user">
<table align="center" border="1">
    <tr bgcolor="cyan">
        <td colspan="2"><center>Create Account</center></td>
    </tr>
    <tr>
        <td>User Name </td>
        <td><form:input path="username" style="width:100%;"/><br/><span style="color:red;">${usernameMsg}</span></td>
         <td><form:errors path="username" style="color:red;"/></td>
    </tr>
    <form:hidden path="role"  value="ROLE_USER"/>
    
    <form:hidden path="enabled" value="TRUE"/>
    
     <tr>
         <td>Mobile number</td>
         <td><form:input path="mobileNo" pattern="[789]\d{9}" title="Only Indian phone number" style="width:100%;"/></td>
         <td><form:errors path="mobileNo" style="color:red;"/></td>
        </tr>
        
        <tr>
         <td>Email address</td>
         <td><form:input type="email" path="emailId" pattern="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" style="width:100%;" placeholder="john@doe.com"/><br/><span style="color:red;">${emailMsg}</span></td>
        <td><form:errors path="emailId" style="color:red;"/></td>
        </tr>
         
    <tr>
        <td>Password</td>
        <td><form:input path="password" type="password"  style="width:100%;"/></td>
        <td><form:errors path="password" style="color:red;"/></td>
    </tr>
    
   
    <tr bgcolor="cyan">
    <span style="color:red;">${null}</span>
        <td colspan="2">
        <center><input type="submit" value="Continue"/></center>
        </td>
    </tr>
</table>
</form:form>

</div>
</body>
</head>

 --%>
 
 
 
  
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
<form:form action="Register" method="post" commandName="user">
   <div class="container col-4" style="border:1px solid grey;border-radius: 14px;padding:41px;">
      <div class="row">
          <h4  class="col-12">Create Account</h4>
			<span class="text-danger">${Message}</span>          
      </div>
      
    <div class="row">
       
          <label class="form-group"> Your Name:</label>
          
          
          <form:input path="username" placeholder="User Name" class="form-control" style="padding:10px; height:35px;" type="text" name="username"/>
           <form:errors path="username" class="text-danger"/>
 </div>


      <div class="row">
       
          <label class="form-group"> Mobile number:</label>

          <input class="form-control" style="padding:10px; height:35px;" type="text" name="mblnmbr" placeholder="Mobile number" required/>
     </div>
     
     <div class="row">
       
          <label class="form-group">Email address(Optional):</label>

          <input class="form-control" style="padding:10px; height:35px;" type="text" name="emailaddress" required/>
     </div>
     
     <div class="row">
       
          <label class="form-group"> Password:</label>

          <input class="form-control" style="padding:10px; height:35px;" type="text" name="passwrd"  placeholder="at least 6 characters" required/>
     </div>
       <br>

           <div class="row">

                 <input class="form-control" style="background-color:#64dd17  ;"  type="submit" value="continue"/>
       </div>
       

     </div>
   </form:form>
   </body>
   </html>

 