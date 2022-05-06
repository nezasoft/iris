<?php
//Make a connection
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {		
		$search = str_replace("'","",sanitize_string($_POST['keyword']));
		$search = str_replace(' ','',$search);
		$stmt = $conn->prepare("SELECT d.id AS item_id, d.delivery_no, d.del_details,m.mat_name, d.delivery_name, sf.site_name AS site_from, st.site_name AS site_to, d.del_date, d.delivery_status, us.fname FROM delivery_note AS d LEFT JOIN materials AS m ON m.id = d.mat_id LEFT JOIN sites AS sf ON sf.id = d.site_id LEFT JOIN sites AS st ON st.id = d.to_site_id LEFT JOIN users AS us ON us.id = d.user_id   WHERE (d.delivery_no LIKE '%".$search."%' OR st.site_name LIKE '%".$search."%' OR d.delivery_name LIKE '%".$search."%' OR m.mat_name LIKE '%".$search."%')  GROUP BY d.delivery_no ORDER BY d.id DESC LIMIT 30");
		$bold= '<strong><font size="+1" color="#140252">'.$search.'</font></strong>';
		$stmt->execute();
		$num_rows = $stmt->rowCount();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo "<div>";
		if($num_rows>=1){
		foreach ($rows as $row){
			echo '<div class="show_suggest" align="left"> Del. No :  <span class="badge badge-danger">'.str_ireplace($search,$bold,$row['delivery_no']).' </span> Del. Name:  <span class="badge badge-info">  '.str_ireplace($search,$bold,$row['delivery_name']).'</span>  Site: <span class="badge badge-primary"> '.str_ireplace($search,$bold,titleCase($row['site_to'])).' </span> 
			Item Name: <span class="badge badge-success">'.str_ireplace($search,$bold,$row['mat_name']).'</span> Date: <span class="badge badge-warning">'.str_ireplace($search,$bold,$row['del_date']).'</span><div align="right"><a href="#" class="badge badge-info" data-bs-toggle="modal" data-bs-target="#ModalContentViewItem" onclick="viewDocument('.$row['delivery_no'].')"> View </a> </div>			
			</div></div>';	
			}
	        if($num_rows>=30){
				 echo '<div class="show_suggest" align="left"><span class="customer_name"><font color="red">* Search limited to 30 records. For a more refined search choose advanced search on the menu</font></span></div>';
				}			
		}else{
		 echo '<div class="show_suggest" align="left"><span class="customer_name"><font color="red">No record found!</font></span></div>';
		}
   echo "</div>";
			
	}else{
			die("<font color='red'>You are not authorized to access this content.</font>");

	}
?>
