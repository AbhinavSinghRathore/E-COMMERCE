<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>




<form:form action="Register" method="post" commandName="user">
<table align="center" border="1">
    <tr bgcolor="cyan">
        <td colspan="2"><center>Create Account</center></td>
    </tr>
    <tr>
        <td>Your Name </td>
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
         <td><form:input type="email" path="emailId"  style="width:100%;"/><br/><span style="color:red;">${emailMsg}</span></td>
        <td><form:errors path="emailId" style="color:red;"/></td>
        </tr>
         
    <tr>
        <td>Password</td>
        <td><form:input path="password"  style="width:100%;"/></td>
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


</body>
</html>