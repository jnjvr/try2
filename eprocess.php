<?php
session_start();

require_once('dbh.php');

$username = $_POST['mailuid'];
$password = $_POST['pwd'];

$sql = "SELECT * FROM `employee` WHERE username = '$username' AND password = '$password'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) == 1) {
    $employee = mysqli_fetch_assoc($result);
    $empid = $employee['id'];
    $profileCompleted = $employee['profile_completed'];

    $_SESSION['loggedin'] = true;
    $_SESSION['username'] = $username;
    $_SESSION['id'] = $empid;

    if ($profileCompleted) {
        header("Location: ..//employeehomepage.php?id=$empid");
    } else {
        header("Location: ..//employeeform.php?id=$empid");
    }
    exit();
} else {
    echo ("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('Invalid Email or Password')
        window.location.href='javascript:history.go(-1)';
        </SCRIPT>");
}

?>