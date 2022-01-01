<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page ="navegion.html"></jsp:include>

<%@page import="com.AhmedOutri.Student" %>
<%@page import="com.AhmedOutri.StudentDao" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>







 <div class="container">
 <div class="jumbotron">
<p></p>
<br></br>
<h1>All Student</h1> 
</div>
</div>







<div class="container">

<p>Student information</p>
<table class="table table-bordered">
<thead>
	<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Password</th>
	<th>Email</th>
	<th>gender</th>
	<th>country</th>
	<th>Delete</th>
	<th>Edit</th>
	</tr>
</thead>
<%List<Student>list=StudentDao.getAllRecords();%>
<%for (Student s:list){ %>
	<tbody>
	<tr>
	<td><%=s.getId()%></td>
	<td><%=s.getName()%></td>
	<td><%=s.getPassword()%></td>
	<td><%=s.getEmail()%></td>
	<td><%=s.getGender()%></td>
	<td><%=s.getContry()%></td>
	<td><a href="deleteStusent.jsp?id=<%=s.getId()%>">delete</a></td>
	<td><a href="editStusent.jsp?id=<%=s.getId()%>">edit</a></td>
	</tr>
	</tbody>
		<% } %>
</table>
</div>



 
<a class="btn btn-primary btn-lg" href="addStudent.jsp" role="button">Add student</a>













</body>
</html>