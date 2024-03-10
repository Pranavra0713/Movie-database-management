<html>
<head>
    <title>RECENT_M PROCEDURE</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <script src="_.js "></script>  
</head>
<body>
<style>
  .center {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 200vh;
  }
body {
    background-image: linear-gradient( 109.6deg, rgba(251,192,147,1) 10.2%, rgba(110,123,251,1) 91.1% );
  }  
  
  </style>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to AISA Movies</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="user.php">Home</a></li>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="a_login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav> 
</body> 
<p style="font-size:260%;color:black;">Movies released after 2019</p>
<table class="center" >
    <?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $dbname = "movie_db";

    $conn = mysqli_connect($host, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Call the stored procedure
    $result = mysqli_query($conn, "CALL recent_movies");

    // Fetch the result set and display it
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            echo  "MOVIE NAME: " . $row["title"]. " - RELEASED ON: " . $row["release_year"]." - AVAILABLE ON: " .$row["available_on"]. "<br>";
        }
    } else {
        echo "No results found.";
    }

    // Close the connection
    mysqli_close($conn);
?>
</div>
