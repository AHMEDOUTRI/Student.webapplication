<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Add Student</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page ="navegion.html"></jsp:include>

<br></br>

<div class="container">
  <div class="col-xs-6 col-sm-4">
  	<div class="panel panel-default">
  		<div class="panel-heading">
    <h3 class="panel-title">Panel title</h3>
  		</div>
  			<div class="panel-body">
   <a class="btn btn-primary btn-lg" href="viewStudent.jsp" role="button">View student
   <span class='glyphicon glyphicon-knight'aria-hidden='true'></span>
   </a>
  		</div>
  	</div>
 </div>
</div>


<br></br>
<div class="container">
  
  	<div class="panel panel-default">
  		<div class="panel-heading">
    <h3 class="panel-title"></h3><h1>Add Student</h1>
  		</div>
  			<div class="panel-body">

<form action="addStudent.jsp"method="post">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"class="form-control"><br>
  <label for="lname">password:</label><br>
  <input type="password" id="password" name="password"class="form-control"><br>
  <label for="lname">Email:</label><br>
  <input type="Email" id="Email" name="Email"class="form-control"><br>
  <label for="lname">Gender:</label><br>
  <input type="radio" name="gender" value="male">Male<br>
  <input type="radio" name="gender" value="female">Female<br>
  <label for="lname">country:</label><br>
  <select name="country"class="btn btn-primary btn-lgpull-right">
  <option value="Iraq">Iraq</option>
  <option value="syria">syria</option>
  <option value="sudan">sudan</option>
  <option value="turkey">turkey</option>
  </select>
  
 <br></br>
  <input type="submit" value="addStudent"class="btn btn-primary btn-lg ">

</form>
</div>
</div>
</div>

</body>
</html>