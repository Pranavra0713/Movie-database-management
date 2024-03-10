<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Record</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        .wrapper{
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<body style="background-size: cover;
    background-image: url(home_bg1.jpeg);
    background-position: center;">
	<nav  class="navbar navbar-reverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="admin.php"><b>Home</b></a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="a_logout.php">Logout &nbsp <i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
      </ul>
    </div>
  </div>
 </nav>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h2>Cast details</h2>
                    </div>
                    <p>Please fill this form and submit to add cast record to the database.</p>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label>Movie ID</label>
                            <input type="text" name="id" class="form-control" placeholder="Movie ID" required>
                        </div>
                        <div class="form-group">
                            <label>Actor ID</label>
                            <input type="text" name="aid" class="form-control" placeholder="Act ID" required>
                        </div>
                        <div class="form-group">
                            <label>Actor Role</label>
                            <input type="text" name="char" class="form-control" placeholder="Role" required>
                        </div>
                        <input type="submit" class="btn btn-primary" name="submit" value="Submit">
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>

<?php
include_once 'db.php';
if(isset($_POST['submit']))
{    
    $mid = $_POST['id'];
    $aid = $_POST['aid'];
    $charr = $_POST['char'];
    $sql = "INSERT INTO cast (movie_id,actor_id,character_name) VALUES ('$mid','$aid','$charr')";
     if (mysqli_query($conn, $sql)) {
        echo "<center>New record has been added successfully !</center>";
        header("location:after_insertion.php");
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
