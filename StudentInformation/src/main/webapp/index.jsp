<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<jsp:include page ="navegion.html"></jsp:include>


<!--الوسط في ووضعهم button وال2  العنوان اجل من-->
 
 
 <div class="jumbotron">
 <div class="container">
<p></p>

<br></br>
<h1>Student Information</h1> 

<br></br>
<br></br>
<div class="row">
  <div class="col-xs-6 col-sm-4">
  <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Panel title</h3>
  </div>
  <div class="panel-body">
    <a class="btn btn-primary btn-lg" href="addStudent.jsp" role="button">Add student
     <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
</a>
  </div>
</div>
  
  </div>
  
  
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
  
  
  <div class="col-xs-6 col-sm-4">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Panel title</h3>
  </div>
  <div class="panel-body">
    Panel content
  </div>
</div>

</div>
</div>
</div>
</div>



 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>