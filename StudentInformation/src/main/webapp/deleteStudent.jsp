<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="com.AhmedOutri.StudentDao" %>
<jsp:useBean id='s' class='com.AhmedOutri.Student'></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
StudentDao.delete(s);
response.sendRedirect("viewStudent.jsp");
%>


</body>
</html>