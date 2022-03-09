<?php
//db connection
include('../connect_db/connect_db.php');

//form variables

$ref_no = sanitize_string($_POST['ref_no']);
$req_name = sanitize_string($_POST['req_name']);
$section = sanitize_string($_POST['section']);
$floor = sanitize_string($_POST['floor']);
$req_by = sanitize_string($_POST['req_by']);
$mat_name = sanitize_string($_POST['mat_name']);
$by_name =$_POST['by_name'];
$pack_name = sanitize_string($_POST['pack_name']);
$pack_size = sanitize_string($_POST['pack_size']);
$qty = sanitize_string($_POST['qty']);
$desc = sanitize_string($_POST['desc']);
 $by_name=explode(',',$_POST["by_name"]);

	

$error ='';

if(empty($ref_no)){
	$error = 'Please enter the requisition ref no';	
}
if(empty($req_name)){
	$error = 'Please title your requisition';	
}
if(empty($mat_name)){
	$error = 'Select material';	
}
if(empty($pack_size)){
	$error = 'Enter pack size';	
}
if(empty($by_name)){
	$error = 'Specify the person to approve this requisition';	
}
if(empty($pack_name)){
	$error = 'Select the package type';	
}
if(empty($qty)){
$error = 'Enter the quantity for the item';	
	
}
if(empty($req_by)){
$error = 'Person requesting the items';		
}
if(empty($section)){
$error = 'Select section';		
}
if(empty($floor)){
$error = 'Select floor';		
}
if(!is_digits($qty)){
	$error = 'Quantity must be numeric';	
   }
if(empty($desc)){
	$error = 'Description of what or where the requested item is going to be used';	
}
//check requisition with the same reference no

$ch_ref = mysql_num_rows(mysql_query("select * from requisitions where req_ref_no='$ref_no' limit 1"));

if($ch_ref==1){
$error = 'Requisition with the reference no already exists. Please reload page to continue.'; 	
}
//check item in cart

$check_cart = mysql_num_rows(mysql_query("select * from temp_requisitions where mat_id='$mat_name' limit 1"));

if($check_cart==1){
	$error= 'You already have this material in cart. Just update the the content';
	
}

	if(empty($error)){
		//save in db
		$save = mysql_query("insert into temp_requisitions(req_ref_no,mat_id,qty,req_details,req_time,req_date,pack_id,req_name,site_id,user_id,requested_by,req_approve_id,pack_size,section_id,floor)
		values('$ref_no','$mat_name','$qty','$desc',curtime(),curdate(),'$pack_name','$req_name','".$_SESSION['COMSYS_SiteID']."','".$_SESSION['COMSYS_UserID']."','$req_by','$by_name','$pack_size','$section','$floor')");		
		//show result of the query		
		if($save){			
			 /**--This code really cracked my head up**/
			 //Save Requisition Approvals Details
		 $n_vals = count($by_name);
		 for($i=0;$i<=$n_vals;$i++)
			{
			$by_name=explode(',',$_POST["by_name"]);
		   $save_approvals = mysql_query("insert into requisition_approvals(req_ref_no,req_user_id)values('$ref_no','".$by_name[$i]."')");
			} 
			echo '<div class="alert alert-success">Item added to requisition</div>';
			
			
		}else{
			
		echo '<span class="error">* Error saving your requisition. Please try again or contact administrator '.mysql_error().'</span>';	
		}
		
	}else{
		
		echo '<div class="alert alert-danger">* '.$error.'</div>';
	}


?>