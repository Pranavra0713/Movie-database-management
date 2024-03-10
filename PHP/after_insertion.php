<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<style>  
  /* Make the image fully responsive */  
  .carousel-inner img {  
    width: 100%;  
    height: 99%;  
  }  
  </style>  
  
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">AISA movies</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="user.php">User Home</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="a_logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav> 
  <div class="carousel-inner">  
    <div class="carousel-item active">  
      <div class="carousel-caption">  
        <p></p>  
      </div>     
      <div class="container">
 	<div class="row">
 		<div class="col-lg-12">
 			<div class="content">
 				<h1>Click here to proceed towards admin page</h1>
 				<h3><i class="fa fa-hand-o-down" aria-hidden="true"></i></h3>
 				<hr>
          <a href="admin.php" class="btn btn-default btn-lg" role="button" aria-pressed="true">Click</a>
 			</div>
 		</div>
 	</div>
 </div>
      
</body>
</html>
