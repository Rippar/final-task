<%--
  Created by IntelliJ IDEA.
  User: Dmitry
  Date: 20.06.2022
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
ADMIN'S ACCOUNT PAGE
<hr/>
Personal data change:
<br/>
<br/>
<form action="controller">
    <input type="hidden" name="command" value="gotochangepassword"/>
    <input type="submit" value="Change password"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="gotochangepersonalinfo"/>
    <input type="submit" value="Change personal info"/>
</form>
<hr/>
Admin functions:
<br/>
<br/>
<form action="controller">
    <input type="hidden" name="command" value="findallusers"/>
    <input type="submit" value="Get list of all users"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="findallcars"/>
    <input type="submit" value="Get list of all cars"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="findallorders"/>
    <input type="submit" value="Get list of all orders"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="findallreturnforms"/>
    <input type="submit" value="Get list of all return forms"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="gotoaddcarpage"/>
    <input type="submit" value="Go to add car page"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="gotoupdatecarpage"/>
    <input type="submit" value="Go to update car page"/>
</form>
<hr/>
Inactivate functions:
<br/>
<br/>
<form action="controller">
    <input type="hidden" name="command" value="gotoinactivateuserpage"/>
    <input type="submit" value="Go to inactivate user page"/>
</form>

<form action="controller">
    <input type="hidden" name="command" value="gotoinactivatecarpage"/>
    <input type="submit" value="Go to inactivate car page"/>
</form>
<hr/>
<br/>
<form action="controller">
    <input type="hidden" name="command" value="gotohomepage"/>
    <input type="submit" value="Return to home page"/>
</form>
<hr/>
User data ${user_data_session}
</body>
</html>
