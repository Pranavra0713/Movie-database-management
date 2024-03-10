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
                        <h2>Rating</h2>
                    </div>
                    <p>Please fill this form and submit to give ratings record to the database.</p>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label>Rating ID</label>
                            <input type="text" name="id" class="form-control" placeholder="ID" required>
                        </div>
                        <div class="form-group">
                            <label>Movie ID</label>
                            <input type="text" name="mid" class="form-control" placeholder="MOV_ID" required>
                        </div>
                        <div class="form-group">
                            <label>Movie title</label>
                            <input type="text" name="title" class="form-control" placeholder="Star" required>
                        </div>
                        <div class="form-group">
                            <label>Rating Star(0-5)</label>
                            <input type="text" name="rat" class="form-control" placeholder="Star" required>
                        </div>
                        <div class="form-group">
                            <label>Review</label>
                            <input type="text" name="rev" class="form-control" placeholder="Review" required>
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
    $mid = $_POST['mid'];
    $title = $_POST['title'];
    $rat = $_POST['rat'];
    $rev = $_POST['rev'];
    $sql = "INSERT INTO rating VALUES ('$id','$mid','$title','$rat','$rev')";
     if (mysqli_query($conn, $sql)) {
        echo "<center>New record has been added successfully !</center>";
        header("location:after_insertion.php");
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>
