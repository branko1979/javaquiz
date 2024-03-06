<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<%
    String username = request.getUserPrincipal() != null ? request.getUserPrincipal().getName() : "";
%>
<h1>Dobrodosao ADMIN <%= username %>!</h1>
<br>
<br>
<h2><a href="all-users">Prikazi sve usesnike</a></h2>
<br>
<br>
<h2><a href="all-questions">Prikazi pitanja kviza</a></h2>
<br>
<br>
<h2><a href = "correct-answers">Prikazi ucesnike koji su na sva pitanja odgovorili tacno</a></h2>
<br>
<br>
<h2><a href = "users-all-answers">Prikazi ucesnike koji su  odgovorili na sva pitanja</a></h2>
<br>
<br>
<h2><a href = "users-with-answer-count">Prikazi ucesnike po nerastucoj uspesnosti</a></h2>
<br>
<br>
<h2><a href = "questions-with-answer-count">Spisak pitanja uredjenih po nerastucem procentu tacnih odgovora</a></h2>
<br>
<br>
<h2><a href = "questions-with-wrong-answer-count">Spisak pitanja uz prikaz procenta najcesceg netacnog odgovora i samog odgovora</a></h2>
<br>
<br>
    <form action="/logout" method="post">
        <input type="submit" value="Logout" />
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>