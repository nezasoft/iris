<?php
//Make a connection
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
 if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
  header('Content-Type: application/json');
  $input = filter_input_array(INPUT_POST);
  $item_code = sanitize_string($input['id']);
  $qty = $input['Quantity'];
   	if($input['action']==='edit'){	 
	  $update = $conn->prepare("UPDATE  temp_inward SET qty='".$qty."' WHERE id='".$item_code."'");
	  $update->execute();
	  $row_count = $update->rowCount();
	  if($row_count>=1){
	   $resp = 'Record Updated!';
	  }else{
	   $resp = 'Record failed to updated!';
	  }	   
		$update->execute();
	}elseif($input['action']==='delete'){
		//Lets Delete Record from DB
		$update = $conn->prepare("DELETE FROM temp_inward WHERE id='".$item_code."'  LIMIT 1");
		$update->execute();
		$resp = 'Record Deleted!';				
	}	
    $num_rows = $update->rowCount();
	if($num_rows>=1){
		echo json_encode($resp);
	}else{
		$err = 'Error occurred while trying to update record!';
        echo json_encode($err);
	}
}else{
  die("<font color='red'>You are not authorized to access this content.</font>");
  }
?>