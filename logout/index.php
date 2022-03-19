<?php
include('../connection/connect.php');
if(isset($_GET['logout'])){
//Update online status
$update_status = $conn->prepare("UPDATE users SET online='0' WHERE id='".$_SESSION['IRIS_USER_ID']."' LIMIT 1");
$update_status->execute();

/*$log_desc ="Loggedout of  the system successfully!";
//Log Activity
$log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc)VALUES(curdate(),curtime(),'".$_SESSION['NERVE_USER_ID']."','".$log_desc."')");
$log->execute();*/
//Kill and destroy users sessions

session_unset();
session_destroy();
//Redirect to the login page
echo'<script>
window.location.href="../?home";</script>';
}else{
session_unset();
session_destroy();
//Redirect to the login page
echo'<script>
window.location.href="../?home";</script>';
}


?>