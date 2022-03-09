<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$mat_name = sanitize_string($_POST['mat_name']);
$qty = sanitize_string($_POST['qty']);
$store = sanitize_string($_POST['store']);
$desc = sanitize_string($_POST['desc']);
$site_id = sanitize_string($_POST['site_id']);
$sup_name = sanitize_string($_POST['sup_name']);
	if(empty($mat_name)){
		$error = 'Select material';	
	}

	 if(!is_numeric($qty)){
		$error = 'Quantity must be numeric';	
	}
	//get material name 
	
	$get_mat = mysql_fetch_assoc(mysql_query("select mat_name from materials where mat_id = '$mat_name'"));
    $mat_name_new = $get_mat['mat_name'];
	//get the count of stock for this material
	$count_stock = mysql_fetch_assoc(mysql_query("select quantity from materials_stock where store_id='$store' and mat_id='$mat_name'"));
	$stock = $count_stock['quantity'];
	$new_stock = $stock + $qty;
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("update materials_stock set quantity=quantity + '$qty' where mat_id='$mat_name' and store_id='$store' limit 1");
		$log = 'Updated stock from '.$stock.' to '.$new_stock.' items. Stock for '.$mat_name_new.' is now at '.$new_stock.' ';
		//keep log
				$update_log=mysql_query("insert into stock_log(store_id,mat_id,user_id,log_details,log_date,log_time,site_id,qty,sup_id)
				values('$store','$mat_name','".$_SESSION['COMSYS_UserID']."','$log',curdate(),curtime(),'$site_id','$qty','$sup_name')");
		//if success
		if($save&&$update_log){
			echo '<br/><span class="success">Stock Updated Successfully from <strong><font color="blue">'.$stock.'</font></strong> to <strong><font color="blue">'.$new_stock.'</font></strong> !</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating Stock! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>