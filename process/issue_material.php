<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
   }

    $ref_no = strtoupper(generateRandomString());
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$mat_id = sanitize_string($_POST['mat_id']);
	$req_id = sanitize_string($_POST['req_id']);
	$quantity = sanitize_string($_POST['qty']);
	try{
		 $conn->beginTransaction();
		 //check requistion
		 $check_req = $conn->prepare("SELECT id  FROM materials_request_form  WHERE id='".$req_id."' AND req_status='A' LIMIT 1");
		 $check_req->execute();
		 $check_req_count = $check_req->rowCount();
		 if($check_req_count==0){
			die("<font color='red'>*Item already issued! </font>"); 
			 
		 }
		 
		 //lets start my checking if item is in stock
		 $check_stock = $conn->prepare("SELECT quantity, id AS stock_id FROM materials_stock WHERE mat_id='".$mat_id."' AND store_id='".$_SESSION['IRIS_STORE_ID']."' LIMIT 1");
		 $check_stock->execute();
		 $check_stock_row = $check_stock->fetch(PDO::FETCH_ASSOC);
		 $stock_count = $check_stock_row['quantity'];
		 $stock_id = $check_stock_row['stock_id'];
		 if($stock_count<=0){
			 die("<br/><div class='alert alert-danger'>* The requested item is out of stock! </div>");			 
		 }
		 
		 if($stock_count<$quantity){
			 die("<br/><div class='alert alert-danger'>* The requested item <strong>".$quantity."</strong> is more than what is in stock <strong>".$stock_count."</strong>! </div>");
			 
		 }
		 $remark = 'Item issued';
		 //Record in issuances
		 $issued = $conn->prepare("INSERT INTO materials_issuance(store_id,user_id,mat_id,qty,issue_desc,date_issue,time_issue,site_id,ref_no,requisition_id)VALUES('".$_SESSION['IRIS_STORE_ID']."','".$_SESSION['IRIS_USER_ID']."','".$stock_id."','".$quantity."','".$remark."',curdate(),curtime(),'".$_SESSION['IRIS_SITE_ID']."','".$ref_no."','".$req_id."')");
		 $issued->execute();		 
		 //update stock
		 $update = $conn->prepare("UPDATE materials_stock SET quantity=quantity-'".$quantity."' WHERE mat_id='".$mat_id."' AND store_id='".$_SESSION['IRIS_STORE_ID']."' LIMIT 1");
		 $update->execute();
		 //Update transactions
		 $stock_trans = $conn->prepare("INSERT INTO stock_transaction(stock_id,remarks,user_id,trans_date,trans_time,cr_dr,quantity,ref_no)VALUES('".$stock_id."','".$remark."','".$_SESSION['IRIS_USER_ID']."',curdate(),curtime(),'C','".$quantity."','".$ref_no."')");	
		 $stock_trans->execute();
		 //Log Activity
		 $log_desc ="Issued material to   <strong>".$requested." for  ".$remark."</strong>";
		 $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		 $log->execute(); 
        //update material Requisition report
         $update_req = $conn->prepare("UPDATE materials_request_form SET req_status='C' WHERE id='".$req_id."' LIMIT 1");
         $update_req->execute();		 
		 $conn->commit();		 
	echo '<font color="green">Item issued!</font>';

	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");		 
	 }
}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	 