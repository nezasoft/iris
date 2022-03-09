<?php
//db connection
include('../connect_db/connect_db.php');

//form variables
$ref_no = sanitize_string($_POST['ref_no']);
$req_name = sanitize_string($_POST['req_name']);
$mat_name = sanitize_string($_POST['mat_name']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$req_id = sanitize_string($_POST['req_id']);
$desc = sanitize_string($_POST['desc']);

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
if(empty($pack_name)){
	$error = 'Select the package type';	
}
if(empty($qty)){
$error = 'Enter the quantity for the item';	
	if(!is_numeric($qty)){
	$error = 'Quantity must be numeric';	
   }
}
if(empty($desc)){
	$error = 'Description of what or where the requested item is going to be used';	
}


	if(empty($error)){
		//save in db
		$save = mysql_query("update requisitions set mat_id='$mat_name',qty='$qty',req_details='$desc',pack_id='$pack_name',req_name='$req_name' where req_id='$req_id'");
		
		//show result of the query
		
		if($save){
			
			echo '<span class="success">Requisition item Updated Successfully!</span>';
			//redirect to the requistion page
		}else{
			
		echo '<span class="error">* Error updating your requisition. Please try again or contact administrator '.mysql_error().'</span>';	
		}
		
	}else{
		
		echo '<span class="error">* '.$error.'</span>';
	}

	







?>