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
		$store_id = $_POST['store_id'];
		$stmt = $conn->prepare("SELECT st.id AS item_id, st.min_stock_level,st.max_stock_level, st.quantity,st.stock_desc, mt.mat_name,pk.pack_name   FROM materials_stock AS st LEFT JOIN materials AS mt ON mt.id = st.mat_id LEFT JOIN packages AS pk ON pk.id = st.pack_id WHERE st.store_id='".$store_id."' AND (mt.mat_name LIKE '%".$search."%' OR st.stock_desc LIKE '%".$search."%') ORDER BY mt.mat_name ASC  LIMIT 30");
		$bold= '<strong><font size="+1" color="#140252">'.$search.'</font></strong>';
		$stmt->execute();
		$num_rows = $stmt->rowCount();
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo "<div>";
		if($num_rows>=1){
		foreach ($rows as $row){

			echo '<div class="show_suggest" align="left"> Item : '.str_ireplace($search,$bold,titleCase($row['mat_name'])).' <span class="badge badge-danger">Min Stock: '.$row['min_stock_level'].' </span> <span class="badge badge-success">Max Stock: '.$row['max_stock_level'].' </span>  <span class="badge badge-warning">Stock Level:'.$row['quantity'].'</span></div></div>';	
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
