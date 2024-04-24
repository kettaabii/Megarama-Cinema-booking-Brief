<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h2>Login</h2>
<%-- Display error message if present --%>
<% String error = request.getParameter("error"); %>
<% if (error != null && !error.isEmpty()) { %>
<p style="color: red;"><%= error %></p>
<% } %>

<%-- Login Form --%>
<form action="login" method="post">
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password"><br><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
