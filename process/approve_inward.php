<?php
include('../connect_db/connect_db.php');
$inw_ref = sanitize_string($_POST['inw_ref']);
if(empty($inw_ref) ){
die('<script>
alert("There was an error sending request to server. Please refresh the page and try again");
</script>');
	
}else{

//lets count the no of people who have approved the lpo
$count_app = mysql_num_rows(mysql_query("select * from inward_approvals where inw_ref_no ='$inw_ref'
 and inw_approval_status='New' and inw_user_id>0 group by inw_user_id"));

if($count_app==1){// the last person item remaining

//update to approved
$update = mysql_query("update goods_inwards set in_status='Approved' where g_ref_no='$inw_ref'");
//update notification status to approved
mysql_query("update notifications set notif_status='Approved'  where ref='$inw_ref' and recepient_id='".$_SESSION['COMSYS_UserID']."' ");	
//update inward approvals for this user
$del = mysql_query("update inward_approvals set inw_approval_status='Approved', inw_approve_date=curdate(),inw_approve_time=curtime() 
where inw_user_id='".$_SESSION['COMSYS_UserID']."' and inw_ref_no='$inw_ref'");	
}elseif($count_app>1){// 2 or more people remaining
//update to In-Process
$update = mysql_query("update goods_inwards set in_status='In-Process' where g_ref_no='$inw_ref'");	
//update inward approvals for this user
$del = mysql_query("update inward_approvals set inw_approval_status='Approved', inw_approve_date=curdate(),inw_approve_time=curtime() 
where inw_user_id='".$_SESSION['COMSYS_UserID']."' and inw_ref_no='$inw_ref'");	
}

if($del){
	$url = '?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=man_inw#man_inw';
  //update requisition status to compelete
  $gr_row = mysql_fetch_array(mysql_query("select req_no from goods_inwards where g_ref_no='".$inw_ref."' limit 1"));
  $req_no = $gr_row['req_no'];
  //update requisition to complete
   mysql_query("update requisitions set req_status='Completed' where  req_ref_no='".$req_no."'");
	echo '<div class="alert alert-success">Inward Approved Successfully!</div>';	
	echo '<script>

setTimeout(function(){window.location="'.$url.'";}, 1000);
</script>';
	
}else{	
	echo '<div class="alert alert-danger">Error occured while approving Inward. Please try again'.mysql_error().'</div>';
}
}

?>