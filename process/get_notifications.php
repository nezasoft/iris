<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//get activities
$data = $conn->prepare("SELECT n.id AS item_id, n.title, DATE_FORMAT(n.date, '%d %b %Y') AS date, TIME_FORMAT(n.time,'%H:%i') AS time, s.site_name, us.fname,n.message   FROM notification AS n LEFT JOIN sites AS s ON s.id = n.site_id LEFT JOIN users AS us ON us.id = n.recepient_id ORDER BY n.id DESC LIMIT 7");
$data->execute();
$data_count = $data->rowCount();
$data_rows = $data->fetchAll(PDO::FETCH_ASSOC);
if($data_count!=0){
	foreach($data_rows as $row){
?>
												<div class="d-flex align-items-center bg-light-success rounded p-5 mb-7">
													<span class="svg-icon svg-icon-success me-5">
														<span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<path opacity="0.3" d="M21.25 18.525L13.05 21.825C12.35 22.125 11.65 22.125 10.95 21.825L2.75 18.525C1.75 18.125 1.75 16.725 2.75 16.325L4.04999 15.825L10.25 18.325C10.85 18.525 11.45 18.625 12.05 18.625C12.65 18.625 13.25 18.525 13.85 18.325L20.05 15.825L21.35 16.325C22.35 16.725 22.35 18.125 21.25 18.525ZM13.05 16.425L21.25 13.125C22.25 12.725 22.25 11.325 21.25 10.925L13.05 7.62502C12.35 7.32502 11.65 7.32502 10.95 7.62502L2.75 10.925C1.75 11.325 1.75 12.725 2.75 13.125L10.95 16.425C11.65 16.725 12.45 16.725 13.05 16.425Z" fill="black" />
																<path d="M11.05 11.025L2.84998 7.725C1.84998 7.325 1.84998 5.925 2.84998 5.525L11.05 2.225C11.75 1.925 12.45 1.925 13.15 2.225L21.35 5.525C22.35 5.925 22.35 7.325 21.35 7.725L13.05 11.025C12.45 11.325 11.65 11.325 11.05 11.025Z" fill="black" />
															</svg>
														</span>
													</span>
													<div class="flex-grow-1 me-2">
														<a href="#" class="fw-bolder text-gray-800 text-hover-primary fs-8"><?php echo $row['title']; ?></a>
														<span class="text-muted fw-bold d-block"><?php echo $row['date']." ".$row['time']; ?></span>
													</div>
													<span class="fw-bolder text-success py-1"><?php echo titleCase($row['fname']); ?></span>
												</div>
<?php 
	}
}else{
die("<div class='alert alert-danger'>* No activity recored yet!</div>");

}
?>
