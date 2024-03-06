<%@ page import="java.util.List,java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"%>
<%@page import="javaQuiz.model.Quizuser"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<title>All Participants</title>
</head>
<body>
	<h1>${requestScope.msg }</h1>
	<table border="1" width="70%" align="center">
		<thead>
			<tr>
				<th>Ime</th>
				<th>Prezime</th>
				<th>Username</th>
				<th>Password</th>
				<th>Datum zadnjeg prijavljivanja</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>

			<%
			List<Quizuser> participants = (List<Quizuser>) request.getAttribute("participants");
			for (Quizuser participant : participants) {
			%>
			<tr>
				<td><%=participant.getIme()%></td>
				<td><%=participant.getPrezime()%></td>
				<td><%=participant.getUsername()%></td>
				<td><%=participant.getPassword()%></td>
				<td><%=participant.getDatum()%></td>
				<td><%=participant.getEmail()%></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

</body>
</html>
