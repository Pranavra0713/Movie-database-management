<!DOCTYPE html>
<html lang="en">
<head>
  <title>User</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style/cardd.css">
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
<nav class="navbar navbar-light" style="background-color: #fde3e9;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to AISA Movies</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="user.php">Home</a></li>
      <li><a href="actor.php">Actor</a></li>
      <li><a href="director.php">Director</a></li>
      <li><a href="movie.php">Movies</a></li>
      <li><a href="cast.php">Cast</a></li>
      <li><a href="rating.php">Ratings</a></li>
      <li><a href="avail.php">Available movies</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="a_login.php"><span class="glyphicon glyphicon-log-in"></span> Admin Login</a></li>
    </ul>
  </div>
</nav> 

<div class="card">
  <div class="row">
    <div class="column">
    <h4 class="card-title">Highest rated 'Kannada' movie</h4>
    <p class="card-text"></p>
    <a href="view.php" class="btn btn-primary">VIEW</a>
</div>
<div class="column">
    <h4 class="card-title">Director's work </h4>
    <p class="card-text"></p>
    <a href="view_dir.php" class="btn btn-primary">CHECK</a>
</div>
<div class="column">
    <h4 class="card-title">Count of movies from each provider</h4>
    <p class="card-text"></p>
    <a href="procedure.php" class="btn btn-primary">PROCEED</a>
</div>
<div class="column">
    <h4 class="card-title">Recent Movies</h4>
    <p class="card-text"></p>
    <a href="recent_movie_procedure.php" class="btn btn-primary">VIEW</a>
</div>
</div>
</div>
<p style="font-size:260%;color:black;">Most popular movies</p>
<div class="row">
  <div class="column">
      <h3 class="card-title">.Kantara</h3>
      <img class="card-img-top" src="images/kantara.jpg" alt="Card image cap" width="290" height="180">
      <p class="card-text"></p>
      <a href="https://youtu.be/8mrVmf239GU" class="btn btn-primary">Trailer</a>
  </div>
  <div class="column">
      <h3 class="card-title">Interstellar</h3>
      <img class="card-img-top" src="images/inter.jpg" alt="Card image cap" width="290" height="180">
      <p class="card-text"></p>
      <a href="https://youtu.be/zSWdZVtXT7E" class="btn btn-primary">Trailer</a>
  </div>
  <div class="column">
      <h3 class="card-title">Bahubali</h3>
      <img class="card-img-top" src="bahu.jpg" alt="Card image cap" width="290" height="180">
      <p class="card-text"></p>
      <a href="https://youtu.be/sOEg_YZQsTI" class="btn btn-primary">Trailer</a>
  </div>
  <div class="column">
      <h3 class="card-title">KGF 2</h3>
      <img class="card-img-top" src="images/kgf2.jpg" alt="Card image cap" width="290" height="180">
      <p class="card-text"></p>
      <a href="https://youtu.be/jQsE85cI384" class="btn btn-primary">Trailer</a>
      <p class="card-text"></p>
      <p class="card-text"></p>
  </div>
</div>


</body>
</html>
