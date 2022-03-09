<?php
//db connection
include('../connect_db/connect_db.php');

//form variables
$req_conf = sanitize_string($_POST['req_conf']);
$lpo_no = sanitize_string($_POST['lpo_no']);
$lpo_file_no = sanitize_string($_POST['lpo_file_no']);
$req_name = sanitize_string($_POST['req_name']);
$mat_name = sanitize_string($_POST['mat_name']);
$exp_date = sanitize_string($_POST['exp_date']);
$lpo_date = sanitize_string($_POST['lpo_date']);
$sup_name = sanitize_string($_POST['sup_name']);
$by_name = sanitize_string($_POST['by_name']);
$price = sanitize_string($_POST['price']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$site_id = sanitize_string($_POST['site_id']);
$desc = sanitize_string($_POST['desc']);

//save lpo no in session
$_SESSION['COMSYS_LpoRefNo'] = $lpo_no;

$error ='';

if(empty($lpo_no)){
	$error = 'Please enter the lpo no';	
}
if(empty($lpo_file_no)){
	$error = 'Please enter the lpo no. on file';	
}
if(empty($lpo_date)){
	$error = 'Enter LPO Date';	
}
if(empty($exp_date)){
	$error = 'Enter Expected Date';	
}
if($req_conf !='Yes'){
	
if(empty($req_name)){
	$error = 'Please select requisition for this order';	
}	
}

if(empty($mat_name)){
	$error = 'Select material';	
}
if(empty($price)){
	$error = 'Price';	
}
if(empty($by_name)){
	$error = 'Specify the person who approved the LPO';	
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
	$error = 'Description of the item';	
}




//check lpos with the same no

$ch_ref = mysql_num_rows(mysql_query("select * from lpos where lpo_ref_no='$lpo_no' limit 1"));

if($ch_ref==1){
$error = 'LPO with the lpo no already exists. Please reload page to continue.'; 	
}
//check item in cart

$check_cart = mysql_num_rows(mysql_query("select * from temp_lpos where mat_id='$mat_name' and lpo_ref_no='$lpo_no' limit 1"));

if($check_cart==1){
	$error= 'You already have this material in cart for this LPO. Just update the the content';
	
}

	if(empty($error)){
		
		//save in db
		$save = mysql_query("insert into temp_lpos(lpo_ref_no,lpo_file_no,mat_id,qty,lpo_details,pack_id,req_ref_no,site_id,lpo_user_id,lpo_approve_id,lpo_date,exp_date,sup_id,price)
		values('$lpo_no','$lpo_file_no','$mat_name','$qty','$desc','$pack_name','$req_name','$site_id','".$_SESSION['COMSYS_UserID']."','$by_name','$lpo_date','$exp_date','$sup_name','$price')");
		//show result of the query
		if($save){
	   /**--This code really cracked my head up**/
			 //Save LPO Approvals Details
		 $n_vals = count($by_name);
		 for($i=0;$i<=$n_vals;$i++)
			{
			$by_name=explode(',',$_POST["by_name"]);
		    $save_approvals = mysql_query("insert into lpo_approvals(lpo_ref_no,lpo_file_no,lpo_user_id)values('$lpo_no','$lpo_file_no',".$by_name[$i]."')");
			}
			echo '<span class="success">LPO Cart updated Successfully!</span>';
			//update requisitions to completed for this  item
			$comp = mysql_query("update requisitions set req_status='Completed' where req_ref_no='$req_name' and mat_id='$mat_name' ");
		}else{
			
		echo '<span class="error">* Error saving your lpo details. Please try again or contact administrator '.mysql_error().'</span>';	
		}
		
	}else{
		
		echo '<span class="error">* '.$error.'</span>';
	}

	







?>