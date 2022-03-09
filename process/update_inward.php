<?php
//db connection
include('../connect_db/connect_db.php');

//form variables
$inward_ref_no = sanitize_string($_POST['inward_ref_no']);
$req = sanitize_string($_POST['req']);
$del_note = sanitize_string($_POST['del_note']);
$vehicle_no = sanitize_string($_POST['vehicle_no']);
$delivered_by = sanitize_string($_POST['delivered_by']);
$sup_name = sanitize_string($_POST['sup_name']);
$check_name = sanitize_string($_POST['check_name']);
$confirm_name = sanitize_string($_POST['confirm_name']);
$mat_name = sanitize_string($_POST['mat_name']);
$by_name = sanitize_string($_POST['by_name']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$desc = sanitize_string($_POST['desc']);
$inward_id = sanitize_string($_POST['inward_id']);
$error ='';

if(empty($inward_ref_no)){
	$error = 'Please enter the inward ref no';	
}
if(empty($req)){
	$error = 'Select Requisition No';	
}
if(empty($del_note)){
	$error = 'Enter delivery note no';	
}
if(empty($vehicle_no)){
	$error = 'Enter Vehicle No';	
}
if(empty($delivered_by)){
	$error = 'Specify who delivered the items';	
}
if(empty($sup_name)){
	$error = 'Select Supplier';	
}
if(empty($mat_name)){
	$error = 'Select material';	
}
if(empty($by_name)){
	$error = 'Specify the person who received the items';	
}
if(empty($check_name)){
	$error = 'Specify the person who checked the items';	
}
if(empty($confirm_name)){
	$error = 'Specify the person who confirmed the items have been received';	
}
if(empty($pack_name)){
	$error = 'Select the package type';	
}
if(empty($qty)){
$error = 'Enter the quantity for the item';	
	
}
if(!is_digits($qty)){
	$error = 'Quantity must be numeric';	
   }
if(empty($desc)){
	$error = 'Description of what or where the requested item is going to be used';	
}


	if(empty($error)){
		//save in db
		$save = mysql_query("
		update temp_inward set g_mat_id='$mat_name',req_no='$req',site_code='".$_SESSION['COMSYS_SiteCode']."',g_ref_no='$inward_ref_no',g_user_id='".$_SESSION['COMSYS_UserID']."',g_date=curdate(),g_time=curtime(),delivery_note_no='$del_note',g_qty='$qty ',
		g_desc='$desc',g_delivered_by='$delivered_by',vehicle_no='$vehicle_no',sup_id='$sup_name',checked_by='$check_name',confirmed_by='$confirm_name',received_by='$by_name',pack_id='$pack_name' where g_inward_id='$inward_id'
");
		
		//show result of the query
		
		if($save){
			
			echo '<div class="alert alert-success">Record Updated Successfully!</div>';
		}else{
			
		echo '<div class="alert alert-danger">* Error updating your inward. Please try again or contact administrator '.mysql_error().'</div>';	
		}
		
	}else{
		
		echo '<div class="alert alert-danger">* '.$error.'</div>';
	}

	







?>