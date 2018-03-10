<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="Header.jsp" %>




<form:form action="Register" method="post" commandName="user">
<table align="center" border="1">
    <tr bgcolor="cyan">
        <td colspan="2"><center>Create Account</center></td>
    </tr>
    <tr>
        <td>Your Name </td>
        <td><form:input path="username"/></td>  
    </tr>
    <form:hidden path="role" value="ROLE_USER"/>
    
    <form:hidden path="enabled" value="TRUE"/>
    
     <tr>
         <td>Mobile number</td>
         <td><form:input path="mobileNo"/></td>
        </tr>
        
        <tr>
         <td>Email address</td>
         <td><form:input path="emailId"/></td>
        </tr>
         
    <tr>
        <td>Password</td>
        <td><form:input path="password"/></td>
    </tr>
    <tr bgcolor="cyan">
        <td colspan="2">
        <center><input type="submit" value="Continue"/></center>
        </td>
    </tr>
</table>
</form:form>


</body>
</html>