<?php
include('../connect_db/connect_db.php');

$inw_no = sanitize_string($_POST['inw_name']);
//lets loop through the records associated with this inward
$qr = mysql_query("select gi.g_mat_id,gi.g_qty,mat.mat_name,sup.sup_name,gi.sup_id from goods_inwards as gi
 left join materials as mat on mat.mat_id = gi.g_mat_id
 left join suppliers as sup on sup.sup_id  where gi.g_ref_no ='$inw_no' group by gi.g_mat_id");
while($qrow = mysql_fetch_assoc($qr)){
$mat_id = $qrow['g_mat_id'];	
$mat_name = $qrow['mat_name'];
$sup_name = $qrow['sup_name'];
$qty = $qrow['g_qty'];
$sup_id = $qrow['sup_id'];
$pack_id = $qrow['pack_id'];
$s_desc = ''.$qty.' items added to stock for '.$mat_name.' from '.$sup_name.'. Inward No #'.$inw_no.'';
//check if we already have this item in stock

$ch_st = mysql_num_rows(mysql_query("select mat_stock_id where store_id='".$_SESSION['COMSYS_StoreID']."' and mat_id='$mat_id' limit 1"));

if($ch_st==1){//1 record found, update this record
	
	$update = mysql_query("update materials_stock set quantity=quantity+'".$qty."' where mat_id='$mat_id' and store_id='".$_SESSION['COMSYS_StoreID']."'");
	//insert into stock log
	$update_log = mysql_query("insert into stock_log(store_id,mat_id,user_id,log_details,log_date,log_time,site_id,qty,sup_id,pack_id)
	values('".$_SESSION['COMSYS_StoreID']."','$mat_id','".$_SESSION['COMSYS_UserID']."',
	'$s_desc',curdate(),curtime(),'".$_SESSION['COMSYS_SiteID']."','$qty','$sup_id','$pack_id')");
	//echo each of this newly added items to the user
	if($update && $update_log){
		
		echo '<font color="green">&#10003</font>'.' '.$mat_name.' Added Successfully!<br/>';
		//update this item in inword to completed
		
		mysql_query("update goods_inwards set in_status='Completed' where g_mat_id='$mat_id' and g_ref_no='$inw_no'");
		//display success message
		
		
	}else{
		
		echo '<span class="error">Error occured while adding '.$mat_name.'. Please try again or contact administrator'.mysql_error().'</span>';
		exit();//break code
	}
}else{// create a new record
	$create_new = mysql_query("insert into materials_stock(store_id,mat_id,quantity,pack_id,user_id,add_date,add_time,stock_desc,site_id)
	values('".$_SESSION['COMSYS_StoreID']."','$mat_id','$qty','$pack_id','".$_SESSION['COMSYS_UserID']."',curdate(),curtime(),'$s_desc','".$_SESSION['COMSYS_SiteID']."')");
	//insert into stock log
	$update_log = mysql_query("insert into stock_log(store_id,mat_id,user_id,log_details,log_date,log_time,site_id,qty,sup_id,pack_id)
	values('".$_SESSION['COMSYS_StoreID']."','$mat_id','".$_SESSION['COMSYS_UserID']."',
	'$s_desc',curdate(),curtime(),'".$_SESSION['COMSYS_SiteID']."','$qty','$sup_id','$pack_id')");
	//echo each of this newly added items to the user
	if($create_new && $update_log){
		
		echo '<font color="green">&#10003</font>'.' '.$mat_name.' Added Successfully!<br/>';
		//update this item in inword to completed
		
		mysql_query("update goods_inwards set in_status='Completed' where g_mat_id='$mat_id' and g_ref_no='$inw_no'");
	}else{
		
		echo '<span class="error">Error occured while adding '.$mat_name.'. Please try again or contact administrator'.mysql_error().'</span>';
		exit();//break code
	}
}
	
}
echo '<span class="success">All items added to stock successfully!</span>';

?>