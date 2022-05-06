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
		$stmt = $conn->prepare("SELECT gi.id AS item_id,  gi.g_desc, mt.mat_name, gi.qty, gi.inward_no, gi.delivery_note_no, sup.sup_name, gi.inw_date  FROM good_inward AS gi LEFT JOIN suppliers AS sup ON sup.id = gi.sup_id LEFT JOIN materials AS mt ON mt.id = gi.mat_id  WHERE (gi.inward_no LIKE '%".$search."%' OR gi.g_desc LIKE '%".$search."%' OR mt.mat_name LIKE '%".$search."%' OR sup.sup_name LIKE '%".$search."%' OR gi.delivery_note_no LIKE '%".$search."%') GROUP BY gi.inward_no ORDER BY gi.id DESC LIMIT 30");
		$bold= '<strong><font size="+1" color="#140252">'.$search.'</font></strong>';
		$stmt->execute();
		$num_rows = $stmt->rowCount();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo "<div>";
		if($num_rows>=1){
		foreach ($rows as $row){
			echo '<div class="show_suggest" align="left"> Order No :  <span class="badge badge-danger">'.str_ireplace($search,$bold,$row['inward_no']).' </span> Supplier:  <span class="badge badge-info">  '.str_ireplace($search,$bold,titleCase($row['sup_name'])).'</span>  Details: <span class="badge badge-primary"> '.str_ireplace($search,$bold,$row['g_desc']).' </span> 
			<span class="badge badge-success">'.str_ireplace($search,$bold,$row['mat_name']).'</span> <span class="badge badge-warning">'.str_ireplace($search,$bold,$row['inw_date']).'</span><div align="right"><a href="#" class="badge badge-info" data-bs-toggle="modal" data-bs-target="#ModalContentViewItem" onclick="viewDocument('.$row['inward_no'].')"> View </a> </div>			
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
