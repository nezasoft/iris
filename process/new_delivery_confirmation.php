<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$pack_name = sanitize_string($_POST['pack_name']);
$mat_name = sanitize_string($_POST['mat_name']);
$del_no = sanitize_string($_POST['del_no']);
$price = sanitize_string($_POST['price']);
$inw_no = sanitize_string($_POST['inw_no']);
$qty = sanitize_string($_POST['qty']);
$bal = sanitize_string($_POST['bal']);
$desc = sanitize_string($_POST['desc']);
$site_name = sanitize_string($_POST['site_name']);
 $by_name=explode(',',$_POST["by_name"]);
$rec_date = sanitize_string($_POST['rec_date']);

	if(empty($pack_name)){
		$error = 'Package Name';	
	}
  if(empty($mat_name)){
		$error = 'Material Name';	
	}
	 if(empty($del_no)){
		$error = 'Delivery No';	
	}
	 if(empty($price)){
		$error = 'Price';	
	}
	 if(empty($by_name)){
		$error = 'Approved By';	
	}
	 if(empty($bal)){
		$error = 'Stock Balance';	
	}
	 if(empty($desc)){
		$error = 'Item Description';	
	}
	 if(empty($inw_no)){
		$error = 'Inward No';	
	}
//check pack
$ch_pack = mysql_num_rows(mysql_query("select mat_id,site_supply_id,del_no from delivery_confirmations 
where mat_id='$mat_name' and  site_supply_id='$site_name' and del_no='$del_no' and qty='$qty' limit 1"));

//echo  $store_id;
	if($ch_pack==1){
		$error ='You have already entered this item';
		
	}
	
	//check for errors
	$confirm_code = uniqid(rand(1,5));
	//convert to uppercase
	$confirm_code = strtoupper($confirm_code);	
	if(empty($error)){
	
			 //Save Confirmation Approvals Details
		 $n_vals = count($by_name);
		 
		 for($i=0;$i<=$n_vals;$i++)
			{
			$by_name=explode(',',$_POST["by_name"]);
		   $save_approvals = mysql_query("insert into confirmation_approvals(confirm_code,con_user_id)values('$confirm_code','".$by_name[$i]."')");

			}
			
		//save 
		$save=mysql_query("insert into delivery_confirmations(del_no,mat_id,site_supply_id,price,
		inward_no,pack_id,qty,balance,details,user_id,date_received,
		date_entered,confirm_code,site_id)values('$del_no','$mat_name','$site_name',
		'$price','$inw_no','$pack_name','$qty','$bal','$desc','".$_SESSION['COMSYS_UserID']."',
		'$rec_date',curdate(),'$confirm_code','".$_SESSION['COMSYS_SiteID']."')");
		//if success
		if($save){
			echo '<br/><div class="alert alert-success">Record Saved!</div><br/>';
		}else{
			echo '<br/><div class="alert alert-danger">Error Saving! '.mysql_error().'</div><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>