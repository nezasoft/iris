<?php
//db connection
include('../connect_db/connect_db.php');

//form variables

$ref_no = sanitize_string($_POST['ref_no']);
$taken_by = sanitize_string($_POST['taken_by']);
$del_name = sanitize_string($_POST['del_name']);
$site_name = sanitize_string($_POST['site_name']);
$vehicle_no= sanitize_string($_POST['vehicle_no']);
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
	$error = 'Please enter the requisition ref no';	
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
/*if(!is_digits($qty)){
	$error = 'Quantity must be numeric';	
   }*/
if(empty($desc)){
	$error = 'Description of the item';	
}
//check delivery with the same reference no

$ch_ref = mysql_num_rows(mysql_query("select * from delivery_note where delivery_no='$ref_no'  limit 1"));

if($ch_ref==1){
$error = 'Delivery with the reference no already exists. Please reload page to continue.'; 	
}
//check item in cart

$check_cart = mysql_num_rows(mysql_query("select * from temp_delivery_note where mat_id='$mat_name' and del_details= '$desc' limit 1"));

if($check_cart==1){
	$error= 'You already have this material in cart. Just update the the content';
	
}

	if(empty($error)){
		//save in db
		$save = mysql_query("insert into temp_delivery_note(delivery_no,mat_id,qty,del_details,del_time,del_date,pack_id,
		taken_by,to_site_id,from_site_id,user_id,attn_user_id,site_code,vehicle_no,delivery_name)
		values('$ref_no','$mat_name','$qty','$desc',curtime(),curdate(),'$pack_name','$taken_by','$site_name',
		'".$_SESSION['COMSYS_SiteID']."','".$_SESSION['COMSYS_UserID']."','$attention','".$_SESSION['COMSYS_SiteCode']."','$vehicle_no','$del_name')");
		
		//show result of the query
		
		if($save){
			
			 /**--This code really cracked my head up**/
			 //Save Delivery Approvals Details
		 $n_vals = count($by_name);
		 for($i=0;$i<=$n_vals;$i++)
			{
			$by_name=explode(',',$_POST["by_name"]);

		   $save_approvals = mysql_query("insert into delivery_approvals(del_ref_no,del_user_id)values('$ref_no','".$by_name[$i]."')");

			} 
			echo '<div class="alert alert-success">Record Saved Successfully!</div>';
			
			
		}else{
			
		echo '<div class="alert alert-danger">* Error saving your details. Please try again or contact administrator '.mysql_error().'</div>';	
		}
		
	}else{
		
		echo '<div  class="alert alert-danger">* '.$error.'</div>';
	}


?>