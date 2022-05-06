<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//get activities
$data = $conn->prepare("SELECT sl.id AS item_id, TIME_FORMAT(TIME(sl.time_stamp),'%H:%i') AS time, log_desc, us.fname, s.site_name FROM system_logs AS sl LEFT JOIN users AS us ON us.id = sl.user_id LEFT JOIN sites AS s ON s.id = us.site_id ORDER BY sl.id DESC LIMIT 7");
$data->execute();
$data_count = $data->rowCount();
$data_rows = $data->fetchAll(PDO::FETCH_ASSOC);
if($data_count!=0){
	foreach($data_rows as $row){
?>

<div class="timeline-item">
<div class="timeline-label fw-bolder text-gray-800 fs-6"><?php echo $row['time']; ?></div>
<div class="timeline-badge">
<i class="fa fa-genderless text-warning fs-1"></i>
</div>
<div class="fw-mormal timeline-content text-muted ps-3"><?php echo $row['log_desc']; ?></div>
</div>
<?php 
	}
}else{
die("<div class='alert alert-danger'>* No activity recored yet!</div>");

}
?>
