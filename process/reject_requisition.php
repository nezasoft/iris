<?php
include('../connect_db/connect_db.php');
//save input errors
$error = array();
$ref_no = sanitize_string($_POST['ref_no']);
$reason = sanitize_string($_POST['reason']);
	if(empty($reason)){
		$error = 'Enter reason for rejecting';	
	}  
//check reason
$check = mysql_num_rows(mysql_query("select id from rejection_reasons where user_id='".$_SESSION['COMSYS_UserID']."' and req_ref_no='".$ref_no."'  limit 1"));
	if($check==1){
		$error ='You have already posted a reason for rejection';		
	}	
	//check for errors	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into rejection_reasons(req_ref_no,reason,user_id,reject_date,reject_time)values('$ref_no','$reason','".$_SESSION['COMSYS_UserID']."',curdate(),curtime())");
		//update requisition approval status
		
		mysql_query("update requisition_approvals set req_approval_status='Rejected' where req_ref_no='".$ref_no."' and req_user_id='".$_SESSION['COMSYS_UserID']."'");
		//If one person disapproves the whole requisition becomes rejected
		mysql_query("update requisitions set req_status='Rejected', lpo_status='Rejected' where req_ref_no='".$ref_no."'");
		//update notification status
         mysql_query("update notifications set notif_status='Approved' where ref='".$ref_no."' and recepient_id='".$_SESSION['COMSYS_UserID']."' ");
		//if success
		if($save){
			echo '<br/><div  class="alert alert-success">Requisition rejected successfully</div><br/>';
		}else{
			echo '<br/><div class="alert alert-danger">Error Saving! '.mysql_error().'</div><br/>';
			
		}
		
	}else{		
		//display error message		
		echo '<br/><div class="alert alert-danger">'.$error.'</div></br/>';
	}





?>