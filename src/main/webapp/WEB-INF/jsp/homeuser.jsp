<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
</head>
<body>
<%
    String username = request.getUserPrincipal() != null ? request.getUserPrincipal().getName() : "";
%>
<h1>Dobrodosao USER <%= username %>!</h1>
<br>
<br>
<a href = "question/start">POKRENI KVIZ!</a>
<br>
<br>
    <form action="/logout" method="post">
        <input type="submit" value="Logout" />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>