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
//check inward with the same reference no

$ch_ref = mysql_num_rows(mysql_query("select * from goods_inwards where g_ref_no='$inward_ref_no' limit 1"));

if($ch_ref==1){
$error = 'Goods inward with the reference no already exists. Please reload page to continue.'; 	
}
//check item in cart

$check_cart = mysql_num_rows(mysql_query("select * from temp_inward where g_mat_id='$mat_name' limit 1"));

if($check_cart==1){
	$error= 'You already have this material in cart. Just update the the content';
	
}

	if(empty($error)){
		//save in db
		$save = mysql_query("insert into temp_inward(g_mat_id,req_no,site_code,g_ref_no,g_user_id,g_date,g_time,delivery_note_no,g_qty,g_desc,g_delivered_by,
		vehicle_no,sup_id,checked_by,confirmed_by,received_by,pack_id)
		values('$mat_name','$req','".$_SESSION['COMSYS_SiteCode']."','$inward_ref_no','".$_SESSION['COMSYS_UserID']."',
		curdate(),curtime(),'$del_note','$qty','$desc','$delivered_by','$vehicle_no','$sup_name','$check_name','$confirm_name','$by_name','$pack_name')");
		
		//show result of the query
		
		if($save){
				 //Save Inward Approvals Details
				 $n_vals = count($confirm_name);
				 for($i=0;$i<=$n_vals;$i++)
					{
					$confirm_name=explode(',',$_POST["confirm_name"]);

				   $save_approvals = mysql_query("insert into inward_approvals(inw_ref_no,inw_user_id)values('$inward_ref_no','".$confirm_name[$i]."')");

					}
			
			echo '<div class="alert alert-success">Item added to cart Successfully!</div>';
				//update requisitions to completed for this  item
				//$comp = mysql_query("update requisitions set lpo_status='Completed' where req_ref_no='$req' and mat_id='$mat_name' ");
		}else{
			
		echo '<div class="alert alert-danger">* Error saving your inward. Please try again or contact administrator '.mysql_error().'</div>';	
		}
		
	}else{
		
		echo '<div  class="alert alert-danger">* '.$error.'</div>';
	}


?>