<?php
include('../connect_db/connect_db.php');
$lpo_ref_no = sanitize_string($_POST['lpo_ref_no']);
if(empty($lpo_ref_no) ){
die('<script>
alert("There was an error sending request to server. Please refresh the page and try again");
</script>');
	
}else{

//lets count the no of people who have approved the lpo
$count_app = mysql_num_rows(mysql_query("select * from lpo_approvals where lpo_ref_no ='$lpo_ref_no'
 and lpo_approval_status='New' and lpo_user_id>0 group by lpo_user_id"));

if($count_app==1){// the last person item remaining

//update to approved
$update = mysql_query("update lpos set lpo_status='Approved' where lpo_ref_no='$lpo_ref_no'");
//update notification status to approved
mysql_query("update notifications set notif_status='Approved' where ref='$lpo_ref_no'");	
//update lpo approvals for this user
$del = mysql_query("update lpo_approvals set lpo_approval_status='Approved', lpo_approve_date=curdate(),lpo_approve_time=curtime() 
where lpo_user_id='".$_SESSION['COMSYS_UserID']."' and lpo_ref_no='$lpo_ref_no'");	
}elseif($count_app>1){// 2 or more people remaining
//update to In-Process
$update = mysql_query("update lpos set lpo_status='In-Process' where lpo_ref_no='$lpo_ref_no'");	
//update lpo approvals for this user
$del = mysql_query("update lpo_approvals set lpo_approval_status='Approved', lpo_approve_date=curdate(),lpo_approve_time=curtime() 
where lpo_user_id='".$_SESSION['COMSYS_UserID']."' and lpo_ref_no='$lpo_ref_no'");	
}

if($del){
	$url = '?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=man_lpos#man_lpos';

echo '<span class="success">LPO Approved Successfully!</span>';	
echo '<script>

setTimeout(function(){window.location="'.$url.'";}, 1000);
</script>';
	
}else{	
	echo '<span class="error">Error occured while approving LPO. Please try again'.mysql_error().'</span>';
}
}

?>