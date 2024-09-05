<?php

require_once ('dbh.php');

$first_name = mysqli_real_escape_string($conn, $_POST['first_name']);
$last_name = mysqli_real_escape_string($conn, $_POST['last_name']);
$middle_name = mysqli_real_escape_string($conn, $_POST['middle_name']);
$employee_id = mysqli_real_escape_string($conn, $_POST['employee_id']);
$position = mysqli_real_escape_string($conn, $_POST['position']);
$department = mysqli_real_escape_string($conn, $_POST['department']);
$date_started = mysqli_real_escape_string($conn, $_POST['date_started']);

// Try generate username and password
echo '
<script>
var first_name = ' . json_encode($first_name) . ';
var last_name = ' .json_encode($last_name) . '
var middle_name = ' .json_encode($middle_name) . ';

var username = (first_name.charAt(0) + middle_name.charAt(0) + "." + last_name).toLowerCase();
var password = (first_name.charAt(0) + middle_name.charAt(0) + "." + last_name).toLowerCase();

document.getElementById("username").value = username;
document.getElementById("password").value = username;
</script>
';

$username = mysqli_real_escape_string($conn, $_POST['username']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

$sql = "INSERT INTO `employee`(`first_name`, `last_name`, `middle_name`, `employee_id`, `position`, `department`, `date_started`, `username`, `password`) VALUES ('$first_name', '$last_name', '$middle_name', '$employee_id', '$position', '$department', '$date_started', '$username', '$password')";
$result = $result = mysqli_query($conn, $sql);

if ($result) {
    echo ('
    <script>
    window.alert("Successfully Registered");
    window.location.href = "..//admin_homepage.php";
    </script>
    ');
} else {
    echo ('
    <script>
        window.alert("Failed to Register");
        window.location.href = "javascript:history.go(-1)";
    </script>
');
}
// if($result) {
    
//     echo ("<SCRIPT LANGUAGE='JavaScript'>
//     window.alert('Succesfully Registered')
//     window.location.href='..//view_acc.php';
//     </SCRIPT>");
    // header("Location: ..//aloginwel.php"); dashboard;
// }

// else{
//     echo ("<SCRIPT LANGUAGE='JavaScript'>
//     window.alert('Failed to Register')
//     window.location.href='javascript:history.go(-1)';
//     </SCRIPT>");
// }

mysqli_close($conn);

// else{
//     $sql = "INSERT INTO `employee`(`id`, `first_name`, 'last_name', 'employee_id', 'position', 'department', 'date_started', 'username', 'password') VALUES ('', $first_name', '$last_name', '$employee_id', '$position', '$department', '$date_started', '$username', '$password')";
//     $result = mysqli_query($conn, $sql);

//     if(($result) == 1){
    
//         echo ("<SCRIPT LANGUAGE='JavaScript'>
//         window.alert('Succesfully Registered')
//         window.location.href='..//viewemp.php';
//         </SCRIPT>");
//         //header("Location: ..//aloginwel.php");
//     }
// }
?>