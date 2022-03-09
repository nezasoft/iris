<?php
//db connection
include('../connect_db/connect_db.php');
//form variables
$ref_no = sanitize_string($_POST['ref_no']);
if(empty($ref_no) ){
die('<script>
alert("There was a problem sending request to server. Please refresh the page and try again");
</script>');
	
}else{
//lets count the no of people who have approved this requisition
$count_app = mysql_num_rows(mysql_query("select * from requisition_approvals where req_ref_no='$ref_no' 
and req_approval_status='New'  and req_user_id>0 group by req_user_id"));
if($count_app==1){// the last person item remaining

//update to approved
$update = mysql_query("update requisitions set req_status='Approved' where req_ref_no='$ref_no'");
//update notification status to approved
mysql_query("update notifications set notif_status='Approved' where ref='$ref_no' and recepient_id='".$_SESSION['COMSYS_UserID']."'");	
//update requisition approvals for this user

$del = mysql_query("update requisition_approvals set req_approval_status='Approved', req_approve_date=curdate(),req_approve_time=curtime() 
where req_user_id='".$_SESSION['COMSYS_UserID']."' and req_ref_no='$ref_no'");
}elseif($count_app>1){// 2 or more people remaining
//update to In-Process
$update = mysql_query("update requisitions set req_status='In-Process' where req_ref_no='$ref_no'");	
//update requisition approvals for this user

$del = mysql_query("update requisition_approvals set req_approval_status='Approved', req_approve_date=curdate(),req_approve_time=curtime() 
where req_user_id='".$_SESSION['COMSYS_UserID']."' and req_ref_no='$ref_no'");	
}

if($del){
	$url = '?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req#man_req';

echo '<span class="success">Requisition Approved Successfully!</span>';	
echo '<script>

setTimeout(function(){window.location="'.$url.'";}, 3000);
</script>';
	
}else{
	
	echo '<span class="error">Error occured while approving this requisition. Please contact administrator for more details'.mysql_error().'</span>';
}


}


?>