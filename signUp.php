<!DOCTYPE html>
<html>

<head>

    <title>Sign Up</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Markazi+Text:wght@400..700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kufam:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="styleschristian.css">
</head>

<body style="background-color: #080705; ">

<?php
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "indaclub-db";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
} 

$name =  $_REQUEST['firstname'].=$_REQUEST['lastname'];
$email = $_REQUEST['email'];
$password = $_REQUEST['password'];

$sql = "INSERT INTO student (STUDENT_EMAIL, STUDENT_NAME, STUDENT_PASSWORD) 
VALUES ('$email', '$name', '$password')";

if ($email && $name && $password){
    mysqli_query($conn, $sql);
}


mysqli_close($conn);
?>
    <div class="signUp">
        <img src="assets/gee-gee.png" alt="GG logo" class="logo" style="width: 187px; height: 142px; flex-shrink: 0;margin-top: 50px;">
        <hr style="background-color: white; width: 250px; margin-top: 40px; width: 280px; height: 2px; ">
        <h1>You’ve made it.</h1>
        <h4>Enter a few details to continue.</h4><br>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
            <label for="firstname" style="text-align: left;">Enter Your First Name:</label><br>
            <input type="firstname" id="firstname" name="firstname" required style="border-radius: 10px; width: 250px; height: 40px; border: 1px solid white; background: none; color: white;"><br><br>
            <label for="lastname">Enter Your Last Name:</label><br>
            <input type="lastname" id="lastname" name="lastname" required style="border-radius: 10px; width: 250px; height: 40px; border: 1px solid white; background: none; color: white;"><br><br>
            <label for="email">Enter Your Email:</label><br>
            <input type="email" id="email" name="email" required style="border-radius: 10px; width: 250px; height: 40px; border: 1px solid white; background: none; color: white;"><br><br>
            <label for="pwd">Enter Your Password:</label><br>
            <input type="password" id="pwd" name="password" style="border-radius: 10px; width: 250px; height: 40px; border: 1px solid white; background: none; color: white;"><br>
        </form>
        <div style="display: flex; justify-content: center; margin: 0px; padding: 0px;margin-top: 30px;"><a href="signUp.php" style="text-decoration: none; color: white"><button type="button" class="btn btn-secondary btn-lg signup" href="#">Sign Up</button></a></div>

            

            
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    
    </div>
   

</body>



</html>