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
                        <h2>Movie details</h2>
                    </div>
                    <p>Please fill this form and submit to add movie record to the database.</p>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label>ID</label>
                            <input type="text" name="id" class="form-control" placeholder="ID" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" name="title" class="form-control" placeholder="Title" required>
                        </div>
                        <div class="form-group">
                            <label>Release Year</label>
                            <input type="text" name="year" class="form-control" placeholder="Release year" required>
                        </div>
                        <div class="form-group">
                            <label>Duration</label>
                            <input type="text" name="time" class="form-control" placeholder="Duration" required>
                        </div>
                        <div class="form-group">
                            <label>Movie Language</label>
                            <input type="text" name="lang" class="form-control" placeholder="Language" required>
                        </div>
                        <div class="form-group">
                            <label>Genre</label>
                            <input type="text" name="type" class="form-control" placeholder="Genre" required>
                        </div>
                        <div class="form-group">
                            <label>Director ID</label>
                            <input type="text" name="d_id" class="form-control" placeholder="D_ID" required>
                        </div>
                        <div class="form-group">
                            <label>Movie Image</label>
                            <input type="text" name="img" class="form-control" placeholder="Img" required>
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
    $id = $_POST['id'];
    $title = $_POST['title'];
    $yr = $_POST['year'];
    $time = $_POST['time'];
    $lang = $_POST['lang'];
    $type = $_POST['type'];
    $d_id = $_POST['d_id'];
    $img = $_POST['img'];
    $sql = "INSERT INTO movie  VALUES ('$id','$title','$yr','$time','$lang','$type','$d_id','$img')";
     if (mysqli_query($conn, $sql)) {
        echo "<center>New record has been added successfully !</center>";
        header("location:after_insertion.php");
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
