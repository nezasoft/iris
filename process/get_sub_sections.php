<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
  if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
   $section = sanitize_string($_POST['section']);
   try{ 
 //Data
 $data = $conn->prepare("SELECT id AS item_id,sub_section_name FROM sub_section WHERE section_id='".$section."'  ORDER BY sub_section_name ASC");
 $data->execute();
 $data_rows = $data->fetchAll(PDO::FETCH_ASSOC);
  echo '<option value="">{Select Option}</option>';
     foreach($data_rows as $data_row){
	 echo '<option value="'.$data_row['item_id'].'">'.titleCase($data_row['sub_section_name']).'</option>';	 
	 }
   }catch(PDOException $e){ 
      echo '<div class="alert alert-danger">
				<div class="bg-red alert-icon">
					<i class="glyph-icon icon-times"></i>
				</div>
				<div class="alert-content">
				  <h4 class="alert-title">Database Error!</h4>
				  <p>'.$e->getMessage().'</p>
			   </div>
		   </div>';
   }
	}else{
	die("<font color='red'>You are not authorized to access this content.</font>");
	}
	