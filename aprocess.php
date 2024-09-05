<?php
session_start();

require_once ('dbh.php');

$username = $_POST['mailuid'];
$password = $_POST['pwd'];

$sql = "SELECT * from `admin` WHERE username = '$username' AND password = '$password'";

//echo "$sql";

$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) == 1){
    $_SESSION['loggedin'] = true;
    $_SESSION['username'] = $username;
	
	//echo ("logged in");
	header("Location: ..//admin_homepage.php");
    exit();
}

else{
	echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Invalid Email or Password')
    window.location.href='javascript:history.go(-1)';
    </SCRIPT>");
}
?>