<?php
include('../connect_db/connect_db.php');
$lpo_no = sanitize_string($_POST['lpo_no']);
$user_id = sanitize_string($_POST['user_id']);
if(empty($lpo_no) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("update lpos set lpo_approve_id = '$user_id',redirect_by_user_id='".$_SESSION['COMSYS_UserID']."' where lpo_ref_no='$lpo_no'");
	//details of person to approve LPO
				$qrow_sm = mysql_fetch_assoc(mysql_query("select email,fname,lname,user_id from users where user_id='$user_id'"));
				$sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
				$user_id = $qrow_sm['user_id'];
				$sm_email = $qrow_sm['email'];
	             $site_id = $qrow_sm['site_id'];
			//create a notification to alert all system users
			$title = 'LPO Approval Ref No -'.$lpo_no;
			$cont = 'Hi, '.$sm_name.' you have a new pending LPO requiring your approval. 
			This request has been made by '.$_SESSION['COMSYS_FName'].' ';
			$save_notif =mysql_query("insert into notifications(notification_title,notification_body,
			sender_id,recepient_id,notification_date,notification_time,site_id,ref)
			values('$title','$cont','".$_SESSION['COMSYS_UserID']."','$user_id',curdate(),curtime(),'".$site_id."','$ref_no')");

if($del && $save_notif){

echo '<span class="success">Request has been sent to <font color="blue">'.$sm_name.'</font> for further confirmation and approval!</span>';	
echo '<script>
//window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_lpos#man_lpos";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while  sending request this  LPO\'s  approval. Please try again'.mysql_error().'</span>';
}


}



?>