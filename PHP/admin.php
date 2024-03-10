<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style/card.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <title>Home</title>
</head>
<style>  
  /* Make the image fully responsive */  
  .carousel-inner img {  
    width: 100%;  
    height: 99%;  
  }  
  </style>  
  
<body>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to AISA Movies</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin.php">Home</a></li>
      <li><a href="insert_act.php">Actor</a></li>
      <li><a href="insert_dir.php">Director</a></li>
      <li><a href="insert_mov.php">Movies</a></li>
      <li><a href="insert_cast.php">Cast</a></li>
      <li><a href="insert_rat.php">Ratings</a></li>
      <li><a href="insert_avail.php">Available movies</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="a_logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav> 
<div class="row">
  <div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Actor details</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="actor_a.php" class="btn btn-primary">Actor</a>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Director details</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="director_a.php" class="btn btn-primary">Director</a>
    </div>
  </div>
</div>
</div>
<div class="row">
<div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Movie details</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="movie_a.php" class="btn btn-primary">Movie</a>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Cast details</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="cast_a.php" class="btn btn-primary">Cast</a>
    </div>
  </div>
</div>
</div>
<div class="row">
  <div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Ratings</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="rating_a.php" class="btn btn-primary">Rating</a>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card card-block">
      <h2 class="card-title">Availability</h2>
      <p class="card-text">Click below given button to view</p>
      <a href="avail_a.php" class="btn btn-primary">Available</a>
    </div>
  </div>
</div>
</div>
      
</body>
</html>
