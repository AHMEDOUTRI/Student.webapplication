<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>


<%@page import="com.AhmedOutri.StudentDao" %>
<jsp:useBean id="s" class="com.AhmedOutri.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>


<%

int num = StudentDao.save(s);

if(num>0){
	response.sendRedirect("StudentAdded.jsp");
}else{
	response.sendRedirect("StudentFailed.jsp");
}

%>
 
 

</body>
</html>