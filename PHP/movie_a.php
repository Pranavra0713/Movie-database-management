<html>
<head>
    <title>Movies</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<style>
    .center {
  margin-left: auto;
  margin-right: auto;
}
th, td {
    padding: 15px;
    text-align: center;
}
table, th, td {
  border: 2px solid;
}

body {
    background-image: linear-gradient( 109.6deg, rgba(156,252,248,1) 11.2%, rgba(110,123,251,1) 91.1% );
  }  
  </style>
<table class="center">
    <tr>
        <th>ID</th>
        <th>TITILE</th>
        <th>RELEASE YEAR</th>
        <th>DURATION</th>
        <th>LANGUAGE</th>
        <th>GENRE</th>
        <th>D_ID</th>
        <th>IMAGE</th>
        
    </tr>
    <?php

// Connect to the database
$host = "localhost";
$username = "root";
$password = "";
$dbname = "movie_db";

$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// Execute a query to retrieve data from the "movies" table
$sql = "SELECT * FROM movie";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // Output the data for each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $row["movie_id"] . "</td>";
    echo "<td>" . $row["title"] . "</td>";
    echo "<td>" . $row["release_year"] . "</td>";
    echo "<td>" . $row["duration"] . "</td>";
    echo "<td>" . $row["m_language"] . "</td>";
    echo "<td>" . $row["type"] . "</td>";
    echo "<td>" . $row["director_id"] . "</td>";
    echo "<th>" .'<img src="' .$row["img"]. '" alt="Actor image" style="width:158px;height:128px;">'."</th>";
    echo "</tr>";
  }
} else {
  echo "0 results";
}

// Close the connection
mysqli_close($conn);

?>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome to AISA Movies</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="admin.php">Return</a></li>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="a_logout.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav> 
</body>