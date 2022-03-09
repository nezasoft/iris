<?php
ini_set("display_errors",true);

//db connection
include('../connect_db/connect_db.php');
//check if its an ajax request
  if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

  header('Content-Type: application/json');
  $input = filter_input_array(INPUT_POST);
  $item_code = sanitize_string($input['id']);
   	if($input['action']==='edit'){	 
	  $qty = $input['Quantity'];
	  $desc = $input['Description']; 
	  $delno = $input['DelNo']; 
	  $delby = $input['DelBy']; 
	  $vehno= $input['VehNo']; 
	  //Perform validation
	  //Check for numeric or decimal values
         $qr=mysql_query("update temp_inward set g_qty='$qty',g_desc='$desc',delivery_note_no='$delno',vehicle_no='$vehno',g_delivered_by='$delby' where g_inward_id='$item_code' limit 1 ");
	     $resp = 'Record Updated!';
	}elseif($input['action']==='delete'){
         $qr=mysql_query("delete from temp_inward where g_inward_id='$item_code' limit 1");  
	}	
    $num_rows = mysql_num_rows($qr);
	if($num_rows>=1){
		echo json_encode($resp);
	}else{
		$err = 'Error occurred while trying to update record!';
        echo json_encode($err);
	}
}else{
  die("<font color='red'>You are not authorized to access this content.</font>");
  }	
?>