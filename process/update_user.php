<?php
ini_set("display_errors",true);
//Make a connection
include("../connection/connect.php");
//check if its an ajax request
 if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

  header('Content-Type: application/json');
  $input = filter_input_array(INPUT_POST);
  $item_code = sanitize_string($input['id']);
  $fname = $input['fName'];
  $sname = $input['sName'];
  $email = $input['Email'];
  $username = $input['Username'];
  $status = $input['Status'];
  $site = $input['Site'];
  $role = $input['Role'];
   	if($input['action']==='edit'){	 
	  $update = $conn->prepare("UPDATE  users SET fname='".$fname."',username='".$username."',  lname='".$sname."',site_id='".$site."',role_id='".$role."', email='".$email."',active='".$status."' WHERE id='".$item_code."'");
	  $update->execute();
	  $row_count = $update->rowCount();
	  if($row_count >=1){
	   $resp = 'Record Updated!';
	  }else{
	   $resp = 'Record failed to updated!';
	  }
      	 $log_desc ="Updated details for the user <strong>".$input['fName']." ".$input['mName']."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no,company_id)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','','".$company_id."')");
		  $log->execute(); 
	   
		$update->execute();
	}elseif($input['action']==='delete'){
		//Lets Delete Record from DB
		$update = $conn->prepare("DELETE FROM users WHERE id='".$item_code."'  LIMIT 1");
		$resp = 'Record Deleted!';
		//Lets make the necessary changes
		$update->execute();
		$log_desc ="Removed user <strong>".$input['fName']." ".$input['sName']."</strong>";
		//Log Activity
		$log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no,company_id)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','','".$company_id."')");
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