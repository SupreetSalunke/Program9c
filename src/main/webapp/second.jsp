<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<title>Session Check</title>
</head>
<body>

<h2>Display the session value on this page</h2>

<%
String name = (String)session.getAttribute("user");

if(name == null)
    out.print("Sorry, the session has ended");
else
    out.print("Hello " + name);
%>

</body>
</html>