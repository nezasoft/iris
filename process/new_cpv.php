<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$ref_no = sanitize_string($_POST['ref_no']);
$sup_name = sanitize_string($_POST['supplier_name']);
$total_amount = sanitize_string($_POST['total_amount']);
$lpo_no = sanitize_string($_POST['lpo_no']);
$invoice_no = sanitize_string($_POST['invoice_no']);


	if(empty($ref_no)){
		$error = 'Enter payment voucher no';	
	}
	if(empty($sup_name)){
		$error = 'Select supplier to make payment to';	
	}
	if(empty($total_amount)){
		$error = 'Enter total amount';	
	}
	if(empty($lpo_no)){
		$error = 'Enter LPO(s) no(s)';	
	}
	if(empty($invoice_no)){
		$error = 'Enter Invoice(s) no(s)';	
	}
  
  
  
//check cpv
$ch= mysql_num_rows(mysql_query("select * from cpv where lpo_no='$lpo_no' and 
site_id='".$_SESSION['COMSYS_SiteID']."' and cpv_amount='$total_amount' and supplier_id='$sup_name'
and invoice_no = '$invoice_no' limit 1"));

	if($ch==1){
		$error ='There\'s already an existing cheque payment voucher';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into cpv(cpv_ref_no,site_id,cpv_date,supplier_id,cpv_amount,lpo_no,invoice_no,user_id)
		values('$ref_no','".$_SESSION['COMSYS_SiteID']."',curdate(),'$sup_name','$total_amount','$lpo_no','$invoice_no','".$_SESSION['COMSYS_UserID']."')");
		//if success
		if($save){
			echo '<br/><span class="success">Record Saved!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Saving! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>