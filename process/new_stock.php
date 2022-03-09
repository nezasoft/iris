<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$mat_name = sanitize_string($_POST['mat_name']);
$pack_name = sanitize_string($_POST['pack_name']);
$qty = sanitize_string($_POST['qty']);
$min_stock = sanitize_string($_POST['min_stock']);
$max_stock = sanitize_string($_POST['max_stock']);
$store = sanitize_string($_POST['store']);
$desc = sanitize_string($_POST['desc']);
$site_id = sanitize_string($_POST['site_id']);
	if(empty($mat_name)){
		$error = 'Select material';	
	}
  if(empty($pack_name)){
		$error = 'Package Type';	
	}
	
	 if(!is_numeric($qty)){
		$error = 'Quantity must be numeric';	
	}
	 if(empty($min_stock)){
		$error = 'Minimum Stock Level';	
	}
	 if(empty($max_stock)){
		$error = 'Maximum Stock Level';	
	}
	
	 if(!is_numeric($min_stock)){
		$error = 'Minimum stock level must be numeric';	
	}
	 if(!is_numeric($max_stock)){
		$error = 'Maximum stock level must be numeric';	
	}
	//get material name 
	
	$get_mat = mysql_fetch_assoc(mysql_query("select mat_name from materials where mat_id = '$mat_name'"));
    $mat_name_new = $get_mat['mat_name'];
//check cat
$ch_cat = mysql_num_rows(mysql_query("select * from materials_stock where mat_id='$mat_name' and store_id='$store'  limit 1"));

//echo  $store_id;
	if($ch_cat==1){
		$error ='You already have this item in stock in this store';
		
	}
	
	//check for errors
	$log = 'Added new stock of '.$qty.' items for '.$mat_name_new.'' ;
	if(empty($error)){
		//save 
		$save=mysql_query("insert into materials_stock(store_id,min_stock_level,max_stock_level,mat_id,quantity,pack_id,user_id,add_date,add_time,stock_desc,site_id)values
		('$store','$min_stock','$max_stock','$mat_name','$qty','$pack_name','".$_SESSION['COMSYS_UserID']."',curdate(),curtime(),'$desc','$site_id')");
		//if success
		
		//keep log
				$update_log=mysql_query("insert into stock_log(store_id,pack_id,mat_id,user_id,log_details,log_date,log_time,site_id,qty)
				values('$store','$pack_name','$mat_name','".$_SESSION['COMSYS_UserID']."','$log',curdate(),curtime(),'$site_id','$qty')");
		if($save){
			echo '<br/><span class="success">Stock Added Successfully!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Adding Stock! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>