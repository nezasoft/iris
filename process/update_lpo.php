<?php
//db connection
include('../connect_db/connect_db.php');

//form variables
$lpo_no = sanitize_string($_POST['lpo_no']);
$lpo_id = sanitize_string($_POST['lpo_id']);
//$req_name = sanitize_string($_POST['req_name']);
$mat_name = sanitize_string($_POST['mat_name']);
$exp_date = sanitize_string($_POST['exp_date']);
$lpo_date = sanitize_string($_POST['lpo_date']);
$sup_name = sanitize_string($_POST['sup_name']);
//$by_name = sanitize_string($_POST['by_name']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$desc = sanitize_string($_POST['desc']);

$error ='';

if(empty($lpo_no)){
	$error = 'Please enter the lpo no';	
}
if(empty($lpo_date)){
	$error = 'Enter LPO Date';	
}
if(empty($exp_date)){
	$error = 'Enter Expected Date';	
}

/*if(empty($req_name)){
	$error = 'Please select requisition for this order';	
}*/
if(empty($mat_name)){
	$error = 'Select material';	
}
/*if(empty($by_name)){
	$error = 'Specify the person who approved the LPO';	
}*/
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


	if(empty($error)){
		//save lpo no in session

		//save in db
		$save = mysql_query("update temp_lpos set lpo_ref_no='$lpo_no',mat_id='$mat_name',qty='$qty',lpo_details='$desc',pack_id='$pack_name',
		site_id='".$_SESSION['COMSYS_SiteID']."', lpo_user_id='".$_SESSION['COMSYS_UserID']."',lpo_date='$lpo_date',exp_date='$exp_date',sup_id='$sup_name'
		where lpo_id='$lpo_id'");
		
		//show result of the query
		
		if($save){
			
			echo '<span class="success">LPO Cart Item updated Successfully!</span>';
			echo "<script>
			//setTimeout('location.href = 'http://localhost/comsys/compadm/?acc_type=SiteAdmin&site_id=0&sec=lpos&act=new_lpo#CompleteTrans';',1500);
			</script>";
		}else{
			
		echo '<span class="error">* Error saving your lpo details. Please try again or contact administrator '.mysql_error().'</span>';	
		}
		
	}else{
		
		echo '<span class="error">* '.$error.'</span>';
	}

	







?>