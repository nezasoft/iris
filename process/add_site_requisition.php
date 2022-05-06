<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
    //lets include the mailer class
    require_once('../Mailer/PHPMailerAutoload.php');
    //lets get mail settings
    $mail_server = $conn->prepare("SELECT * FROM mail_setting ORDER BY id ASC LIMIT 1");
    $mail_server->execute();
    $mail_server_count = $mail_server->rowCount();
    if($mail_server_count==0){
        die("<div class='alert alert-danger'>*Mail server not set or configured!</div>");       
    }
    $mail_row = $mail_server->fetch(PDO::FETCH_ASSOC);
	 //Create a new PHPMailer instance
    $mail = new PHPMailer(); //Create a new PHPMailer instance
	$mail->isSMTP();
	$mail->SMTPOptions = array(
	'ssl' => array(
	'verify_peer' => false,
	'verify_peer_name' => false,
	'allow_self_signed' => true
	)
	);
    //Set the hostname of the mail server
    $mail->Host = $mail_row['mail_url'];
    //Set the SMTP port number - likely to be 25, 465 or 587
    $mail->Port = $mail_row['outgoing_port'];          // Set the SMTP port
    $mail->SMTPAuth = true;     // Enable SMTP authentication
    $mail->Username = $mail_row['username'];  // SMTP username
    $mail->Password = $mail_row['password']; // SMTP password
    $mail->SMTPSecure = "ssl"; 
    //Set who the message is to be sent from
    $mail->setFrom($mail_row['email'], $mail_row['mailer_name']);
    //Set an alternative reply-to address
    //$mail->addReplyTo('info@nezasoft.net', 'Nezasoft Team');
    //$mail->addBCC($mail_row['username'], 'Nezasoft Team');
	function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
   }
    $notif_ref = strtoupper(generateRandomString());
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$ref_no = sanitize_string($_POST['ref_no']);
	
	  $inv_qr = $conn->prepare("SELECT document_value FROM business_doc WHERE doc_code='SR'  ORDER BY id DESC LIMIT 1");
      $inv_qr->execute();
      $row = $inv_qr->fetch(PDO::FETCH_ASSOC);
      $start = $row['document_value'];
      function generate_numbers($start, $count, $digits) {//Lets create a receipt no
         $result = array();
         for ($n = $start; $n < $start + $count; $n++) {       
            $result[] = str_pad($n, $digits, "0", STR_PAD_LEFT);       
         }
         return $result;
      }
      $numbers = generate_numbers($start, 1, 9);   
      $init = 1;
      foreach($numbers as $num){
      $receipt_no = $init.$num;
      //Save in SESSION Variable      
      $_SESSION['IRIS_RECEIPT_NO'] = $receipt_no;
      }  
     $receipt_no = $_SESSION['IRIS_RECEIPT_NO'];
	 $conn->beginTransaction();
	try{
		 
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM site_materials_request_form WHERE order_no='".$receipt_no."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");			 
		 }
		//lets get all the data from temporary table
		$get_data = $conn->prepare("SELECT id AS item_id, req_ref_no,building_id,mat_id,work_id,qty,req_details FROM temp_requisitions  AS tr WHERE req_ref_no='".$_SESSION['IRIS_MAT_REF_NO']."' ORDER BY id ASC");
		$get_data->execute();
		$get_data_rows = $get_data->fetchAll(PDO::FETCH_ASSOC);
		$data_count = $get_data->rowCount();
		if($data_count==0){
			 die("<div classs='alert alert-danger'>* No items. Please add item(s) to save</div>");
			
		}
		
		foreach($get_data_rows as $row){
		//save data
		 $save = $conn->prepare("INSERT INTO site_materials_request_form(order_no,user_id,mat_id,qty,req_desc,req_date,req_time,building_id,work_id,site_id)VALUES('".$receipt_no."','".$_SESSION['IRIS_USER_ID']."','".$row['mat_id']."','".$row['qty']."','".$row['req_details']."',curdate(),curtime(),'".$row['building_id']."','".$row['work_id']."','".$_SESSION['IRIS_SITE_ID']."')");
		 $save->execute();			
		}
		
		 $log_desc ="Created a new site material requisition. Document no.  <strong>".$receipt_no."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		  $log->execute();
		  $doc_value = $conn->prepare("UPDATE business_doc set document_value = document_value + 1 WHERE doc_code='SR' LIMIT 1");
		  $doc_value->execute();
		  //lets empty the temp table
		  $empty_table = $conn->prepare("DELETE FROM temp_requisitions WHERE req_ref_no='".$_SESSION['IRIS_MAT_REF_NO']."'");
		  $empty_table->execute();
		 
		  //Get Approval persons details
			 $get_app = $conn->prepare("SELECT fname, email, id AS sender_id  FROM users WHERE site_id='".$_SESSION['IRIS_SITE_ID']."' AND role_id=15 AND active='Yes'");
			 $get_app->execute();
			 $get_app_rows = $get_app->fetchAll(PDO::FETCH_ASSOC);			 
			 foreach($get_app_rows as $get_app_row){			 
			 $fname = $get_app_row['fname'];
			 $email = $get_app_row['email'];
			 $recepient_id = $get_app_row['sender_id'];
			 $notif_title = "Site Requisition Request";
			 $notif_msg = "You have a new site requisition request waiting for your approval";
			 //send this user a notification
             $send_notif = $conn->prepare("INSERT INTO notification(title,message,date,time,sender_id,recepient_id,site_id,ref_no)VALUES('".$notif_title."','".$notif_msg."',curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$recepient_id."','".$_SESSION['IRIS_SITE_ID']."','".$notif_ref."')");
			 $send_notif->execute();
			 
			 $subject = 'Site Requisition Approval Request - Order No -'.$receipt_no;
			 $message = " Dear ".titleCase($fname).",<br/> Your approval is needed for materials requested. Please log into the system to approve. Order no. <strong>".$receipt_no."</strong><br/>
			 Kind Regards,<br/>
			 System Administrator<br/>";
			 $mail->Subject = $subject;
			 $mail->addAddress($email, $fname);
			 $mail->msgHTML($message);
			 $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
			 //Clear message 
		     $message = '';
			 if(!$mail->send()) {
				die("<div class='alert alert-danger'>Mailer Error: ".$mail->ErrorInfo."</div>");
			 }
			 $mail->clearAddresses();
			 $mail->ClearAttachments();	
			 }
			 $conn->commit();
		     echo '<div class="alert alert-success d-flex align-items-center p-5 mb-10">
				<!--begin::Svg Icon | path: icons/duotune/general/gen048.svg-->
				<span class="svg-icon svg-icon-2hx svg-icon-success me-4">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				<path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z" fill="black" />
				<path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z" fill="black" />
				</svg>
				</span>
				<!--end::Svg Icon-->
				<div class="d-flex flex-column">
				<h4 class="mb-1 text-success">Success</h4>
					<span>Your requisition has been submitted</span>
				</div>
			</div>';
		 //reload user reports
		 echo "<script>$('#form_section').empty();getdata(1);window.setTimeout(function(){
			 $('#ModalContentAddNew').modal('hide');},2000);
			 </script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	