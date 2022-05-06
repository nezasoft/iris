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
		$stmt = $conn->prepare("SELECT po.id AS item_id,po.order_no, po.order_details,po.qty,po.rate,mt.mat_name,sup.sup_name, po.order_date,po.order_status, s.site_name FROM purchase_order AS po LEFT JOIN sites AS s ON s.id = po.site_id LEFT JOIN materials AS mt ON mt.id = po.mat_id  LEFT JOIN suppliers AS sup ON sup.id = po.sup_id WHERE (po.order_no LIKE '%".$search."%' OR po.order_details LIKE '%".$search."%' OR mt.mat_name LIKE '%".$search."%' OR s.site_name LIKE '%".$search."%' OR sup.sup_name LIKE '%".$search."%') GROUP BY po.order_no ORDER BY po.id DESC LIMIT 30");
		$bold= '<strong><font size="+1" color="#140252">'.$search.'</font></strong>';
		$stmt->execute();
		$num_rows = $stmt->rowCount();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo "<div>";
		if($num_rows>=1){
		foreach ($rows as $row){
			echo '<div class="show_suggest" align="left"> Order No :  <span class="badge badge-danger">'.str_ireplace($search,$bold,$row['order_no']).' </span> Supplier:  <span class="badge badge-info">  '.str_ireplace($search,$bold,titleCase($row['sup_name'])).'</span> Order Details: <span class="badge badge-primary"> '.str_ireplace($search,$bold,$row['order_details']).' </span> '.str_ireplace($search,$bold,titleCase($row['site_name'])).' 
			<span class="badge badge-success">'.str_ireplace($search,$bold,$row['mat_name']).'</span> <span class="badge badge-warning">'.str_ireplace($search,$bold,$row['order_date']).'</span><div align="right"><a href="#" class="badge badge-info" data-bs-toggle="modal" data-bs-target="#ModalContentViewItem" onclick="viewDocument('.$row['order_no'].')"> View </a> </div>			
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
