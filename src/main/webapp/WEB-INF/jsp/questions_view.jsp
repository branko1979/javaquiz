<%@ page import="java.util.List,java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="org.springframework.security.web.csrf.CsrfToken" %>
<%@page import="javaQuiz.model.WrongAnswer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
</head>
<body>
<%  
String questionText = (String) request.getAttribute("questionText");
int position = (int) request.getAttribute("position");
int numberOfQuestions = (int) request.getAttribute("numberOfQuestions");
List<WrongAnswer> answers = (List<WrongAnswer>) request.getAttribute("answers");
String userName = request.getUserPrincipal().getName();
%>
<h2>Question: <%= questionText %> </h2>
<h2> Question number: <%= (position + 1) %>  /  <%= numberOfQuestions %>   </h2>
<h2>USERNAME: <%= userName %></h2>
<form action="/user/submitAnswers" method="post">
<ol>
  <%  for (WrongAnswer answer : answers) { %>
    <li>
      <input type="checkbox" name="selectedAnswers" value="<%= answer.getId() %>">
      <%= answer.getText() %>
    </li>
  <% } %>
</ol>

<% if (position != 0) { %>
  <a href="<%= position - 1 %>">Previous Question</a>
<% } %>
<p></p>
 <% if (position + 1 < numberOfQuestions) { %>
  <a href="<%= position + 1 %>">Skip Question - Don't delete old Answers</a>
<% } %>
<br><br>
<input type="hidden" name="nextQuestionId" value="<%= position %>" />
<input type="hidden" name="userName" value="<%= request.getUserPrincipal().getName() %>"/>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<button type="submit">Submit Answers</button>
</form>
<br><br><br>
<a href="/user/homeuser">Odustani od kviza</a>
</body>
</html>
