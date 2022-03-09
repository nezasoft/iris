<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$mat_name = sanitize_string($_POST['mat_name']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$req_name= sanitize_string($_POST['req_name']);
$app_name= sanitize_string($_POST['app_name']);
$store = sanitize_string($_POST['store']);
$desc = sanitize_string($_POST['desc']);

	if(empty($mat_name)){
		$error = 'Select material';	
	}
  if(empty($pack_name)){
		$error = 'Package Type';	
	}
	  if(empty($app_name)){
		$error = 'To be approved by';	
	}
	 if(!is_numeric($qty)){
		$error = 'Quantity must be numeric';	
	}
	 if(empty($req_name)){
		$error = 'Requested By';	
	}
//check for stock of this material

$check_stock = mysql_fetch_array(mysql_query("select * from materials_stock where mat_id='$mat_name' and store_id='$store' limit 1"));
$stock = $check_stock['quantity'];
$diff = $stock - $qty;

if($qty>$stock){
	$error ='Sorry, the quantity of items requested is higher than what is in stock which is <font color="blue">'.$stock.'</font>';
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into 
		materials_issuance(store_id,user_id,pack_id,approve_user_id,mat_id,qty,issue_desc,date_issue,time_issue,request_by,site_id)
		values('$store','".$_SESSION['COMSYS_UserID']."','$pack_name','$app_name','$mat_name','$qty','$desc',curdate(),curtime(),'$req_name','".$_SESSION['COMSYS_SiteID']."')");
		//if success
		//now lets update stock
		
		$update = mysql_query("update materials_stock set quantity=quantity-'$qty' where mat_id='$mat_name' and store_id='$store'");
		if($save&&$update){
			echo '<br/><span class="success">Material Issued Successfully! Stock updated from <font color="blue">'.$stock.'</font> items to <font color="blue">'.$diff.'</font>!!!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Issuing Material! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><div class="error">'.$error.'</div></br/>';
	}





?>