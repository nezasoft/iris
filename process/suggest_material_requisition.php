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
		$stmt = $conn->prepare("SELECT req.id AS item_id,req.order_no,req.req_date,bs.section_name, w.work_unit_name, sb.sub_section_name, s.site_name,req.order_no,mt.mat_name, b.building_name, w.work_unit_name FROM materials_request_form AS req LEFT JOIN sites AS s ON s.id = req.site_id LEFT JOIN materials AS mt ON mt.id = req.mat_id LEFT JOIN work_unit  AS w ON w.id = req.work_id LEFT JOIN sub_section AS sb ON sb.id = w.sub_section_id LEFT JOIN building_sections AS bs ON bs.id = sb.section_id  LEFT JOIN building AS b ON b.id = req.building_id  WHERE (req.order_no LIKE '%".$search."%' OR mt.mat_name LIKE '%".$search."%' OR w.work_unit_name LIKE '%".$search."%' OR bs.section_name LIKE '%".$search."%'  OR s.site_name LIKE '%".$search."%' ) AND req.site_id='".$_SESSION['IRIS_SITE_ID']."' GROUP BY req.order_no ORDER BY req.id DESC LIMIT 30");
		$bold= '<strong><font size="+1" color="#140252">'.$search.'</font></strong>';
		$stmt->execute();
		$num_rows = $stmt->rowCount();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo "<div>";
		if($num_rows>=1){
		foreach ($rows as $row){
			echo '<div class="show_suggest" align="left"> Order No :  <span class="badge badge-danger">'.str_ireplace($search,$bold,$row['order_no']).' </span> 
			<span class="badge badge-primary"> Work Unit : '.str_ireplace($search,$bold,titleCase($row['work_unit_name'])).' </span> 
			'.str_ireplace($search,$bold,titleCase($row['site_name'])).' '.str_ireplace($search,$bold,titleCase($row['building_name'])).'<span class="badge badge-info">'.str_ireplace($search,$bold,titleCase($row['section_name'])).'</span> '.'
			<span class="badge badge-success">'.str_ireplace($search,$bold,$row['mat_name']).'</span> <span class="badge badge-warning">'.str_ireplace($search,$bold,$row['req_date']).'</span>
			<div align="right"><a href="#" class="badge badge-info" data-bs-toggle="modal" data-bs-target="#ModalContentViewItem" onclick="viewTransaction('.$row['order_no'].')"> View </a> </div>
			
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
