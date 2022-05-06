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
  $item_name = $input['StockDesc'];
  $min = $input['MinLevel'];
  $max = $input['MaxLevel'];
   	if($input['action']==='edit'){	 
	  $update = $conn->prepare("UPDATE  materials_stock SET stock_desc='".$item_name."',min_stock_level='".$min."',max_stock_level='".$max."' WHERE id='".$item_code."'");
	  $update->execute();
	  $row_count = $update->rowCount();
	  if($row_count >=1){
	   $resp = 'Record Updated!';
	  }else{
	   $resp = 'Record failed to updated!';
	  }
      	 $log_desc ="Updated details for the stock item code <strong>".$item_code."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no,company_id)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		  $log->execute(); 
	   
		$update->execute();
	}elseif($input['action']==='delete'){
		//Lets Delete Record from DB
		$update = $conn->prepare("DELETE FROM roles WHERE id='".$item_code."'  LIMIT 1");
		$resp = 'Record Deleted!';
		//Lets make the necessary changes
		$update->execute();
		$log_desc ="Removed item code <strong>".$item_code."</strong>";
		//Log Activity
		$log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no,company_id)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		$log->execute(); 
		
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