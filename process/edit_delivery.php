<?php
//db connection
include('../connect_db/connect_db.php');

//form variables

$ref_no = sanitize_string($_POST['ref_no']);
$taken_by = sanitize_string($_POST['taken_by']);
$del_name = sanitize_string($_POST['del_name']);
$site_name = sanitize_string($_POST['site_name']);
$vehicle_no= sanitize_string($_POST['vehicle_no']);
$del_id= sanitize_string($_POST['del_id']);
$req_by = sanitize_string($_POST['req_by']);
$mat_name = sanitize_string($_POST['mat_name']);
$attention= sanitize_string($_POST['attention']);
//$by_name =$_POST['by_name'];
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$desc = sanitize_string($_POST['desc']);
 $by_name=explode(',',$_POST["by_name"]);

	

$error ='';

if(empty($ref_no)){
	$error = 'Please enter the delivery ref no';	
}
if(empty($del_name)){
$error = 'Enter delivery name';	
	
}
if(empty($taken_by)){
	$error = 'Taken By?';	
}
if(empty($vehicle_no)){
	$error = 'Vehicle registration no';	
}
if(empty($mat_name)){
	$error = 'Select material';	
}
if(empty($site_name)){
	$error = 'Site to which this delivery is going to?';	
}
if(empty($by_name)){
	$error = 'Specify the person to approve this delivery';	
}
if(empty($pack_name)){
	$error = 'Select the package type';	
}
if(empty($qty)){
$error = 'Enter the quantity for the item';	
	
}
if(empty($attention)){
$error = 'Person to bring to attention from the selected site';	
	
}
if(!is_digits($qty)){
	$error = 'Quantity must be numeric';	
   }
if(empty($desc)){
	$error = 'Description of the item';	
}


	if(empty($error)){
		//save in db
		$save = mysql_query("update temp_delivery_note set mat_id='$mat_name',qty='$qty',del_details='$desc',pack_id='$pack_name',
		taken_by='$taken_by',to_site_id='$site_name',attn_user_id='$attention',vehicle_no='$vehicle_no',delivery_name='$del_name' where delivery_id='$del_id'");
		
		//show result of the query
		
		if($save){
			echo '<span class="success">Record updated Successfully!</span>';
	
		}else{
			
		echo '<span class="error">* Error updating your details. Please try again or contact administrator '.mysql_error().'</span>';	
		}
		
	}else{
		
		echo '<span class="error">* '.$error.'</span>';
	}


?>