<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<%@page import="com.AhmedOutri.Student" %>
<%@page import="com.AhmedOutri.StudentDao" %>

<%
String id=request.getParameter("id");
Student s=StudentDao.getRecordByld(Integer.parseInt(id));
%>

<form action="editStudent.jsp"method="post">
ID:<br>
<input type="text" name="id" class="form-control" value="<%=s.getId()%>"><br>

First name:<br>
<input type="text" name="firstname" class="form-control" value=<%=s.getName()%>><br>

Password:<br>
<input type="password" name="password" class="form-control" value="<%=s.getPassword()%>"><br>

Email:<br>
<input type="text" name="email" class="form-control" value="<%=s.getEmail()%>"><br>

Gender:<br>
<div class="radio">
<input type="radio" name="gender" value="male">Male<br>
</div>
<div class="radio">
<input type="radio" name="gender" value="female">Female<br>
</div>

<label for="lname">country:</label><br>
  <select name="country"class="btn btn-primary btn-lgpull-right">
  <option value="Iraq">Iraq</option>
  <option value="syria">syria</option>
  <option value="sudan">sudan</option>
  <option value="turkey">turkey</option>
  </select>

<br></br>
  <input type="submit" value="Edit"class="btn btn-primary btn-lg ">
</form>


</body>
</html>