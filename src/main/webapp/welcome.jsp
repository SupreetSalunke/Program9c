<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("uname");
String timeStr = request.getParameter("time");

int time = Integer.parseInt(timeStr); // user-defined time

// Store in session
session.setAttribute("user", name);

// Set session expiry time (dynamic)
session.setMaxInactiveInterval(time);

out.print("<h2>Hello " + name + "</h2>");
out.print("<p>Session started for " + time + " seconds</p>");
out.print("<p>Your name is stored in session</p>");
out.print("<p>Click below link within given time or wait for expiry</p>");
%>

<a href="second.jsp">Check Session</a>

</body>
