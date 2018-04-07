 <%@include file="Header.jsp" %>
 <div class="cont">



<form action="perform_login" method="post">
<table align="center" border="1" class="table table-hover">
    <tr bgcolor="cyan">
        <td colspan="2"><center>Login</center></td>
    </tr>
    <tr>
        <td>User Name </td>
        <td><input type="text" name="username" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="password" /><br>
            <left style="color:red;">${Message}</left>
        
        </td>
    </tr>
    <tr bgcolor="cyan">
        <td colspan="2">
        <center><input type="submit" value="Continue"/></center>
        </td>
    </tr>
    
</table>
</form>
</div>

<%@include file="footer.jsp"%>