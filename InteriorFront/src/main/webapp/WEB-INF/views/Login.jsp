<%@include file="Header.jsp" %>

<form action="perform_login" method="post">
<table align="center" border="1">
    <tr bgcolor="cyan">
        <td colspan="2"><center>Login</center></td>
    </tr>
    <tr>
        <td>User Name </td>
        <td><input type="text" name="username" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="password" name="password" /></td>
    </tr>
    <tr bgcolor="cyan">
        <td colspan="2">
        <center><input type="submit" value="Continue"/></center>
        </td>
    </tr>
</table>
</form>

</body>
</html>