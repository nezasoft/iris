
<?php
include('../connect_db/connect_db.php');

require '../PHPMailer/PHPMailerAutoload.php';
    $mail = new PHPMailer;
    //Server settings
   // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    //$mail->Debugoutput = 'html';
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = '37.61.232.138';  // Specify main and backup SMTP servers
   /*$mail->SMTPAuth = false;                               // Enable SMTP authentication
    $mail->Username = 'info@nezakenya.com';                 // SMTP username
    $mail->Password ='#info2015';                           // SMTP password
    $mail->SMTPSecure = 'tls'; */                           // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 26;                                    // TCP port to connect 
    $mail->setFrom('info@nezakenya.com', 'Elegant Properties Limited (CMA)');   //Set who the message is to be sent from
    $mail->AddEmbeddedImage('http://elegant.nezakenya.com/images/elegant_logo.png', 'Elegant Properties Ltd (CMA)');
    //get all the data from the temporary requisition table
    $req_ref_no = sanitize_string($_POST['ref_no_send']);

if(empty($req_ref_no)){
	
	die('<script> alert("There was an error sending request to server!");</script>');
}else{
	
$qR = mysql_query("select * from temp_requisitions where req_ref_no='$req_ref_no'");

//check req_date
$check_req = mysql_num_rows(mysql_query("select * from requisitions where req_ref_no='".$req_ref_no."' limit 1"));

if($check_req==1){
	
	die('<div class="alert alert-error">Requisition has already been sent. Click on new Requisition</div>');
	
}

//loop through all the records
$count_rows = mysql_num_rows($qR);

if($count_rows==0){
	
	die('<div class="alert alert-error">You do not have any materials in cart to send!</div>');
}
//count rows affected
$count = 0;
while($qRow=mysql_fetch_assoc($qR)){
	$count ++;
	$ref_no =  $qRow['req_ref_no'];
	$req_name = $qRow['req_name'];
	$user_id = $qRow['user_id'];
	$approve_id = $qRow['req_approve_id'];
	$req_user_id = $qRow['req_user_id'];
	$mat_id = $qRow['mat_id'];
	$qty = $qRow['qty'];
	$req_details = $qRow['req_details'];
	$req_time = $qRow['req_time'];
	$req_date = $qRow['req_date'];
	$req_name = $qRow['req_name'];
	$requested_by = $qRow['requested_by'];
	$pack_id = $qRow['pack_id'];
	$pack_size = $qRow['pack_size'];
	$site_id = $qRow['site_id'];
	$section_id = $qRow['section_id'];
	$floor = $qRow['floor'];
	//save all these records following the same order in the database
	$save = mysql_query("insert into requisitions (req_ref_no,site_id,user_id,req_user_id,mat_id,qty,req_details,req_time,req_date,req_name,pack_id,site_code,req_approve_id,section_id,floor,pack_size,requested_by)
	values('$ref_no','$site_id','$user_id','$req_user_id','$mat_id','$qty','$req_details','$req_time','$req_date','$req_name','$pack_id','".$_SESSION['COMSYS_SiteCode']."','$approve_id','$section_id','$floor','$pack_size','$requested_by')");	
}
		if(($count==$count_rows) && $save){	
		   mysql_query("delete from requisition_approvals where req_user_id=0 and req_ref_no='$req_ref_no'"); 
		//if temp table has been cleared
	    $qrow_ = mysql_query("select * from requisition_approvals as la left join users as us on us.user_id = la.req_user_id where la.req_user_id >0 and la.req_ref_no='$req_ref_no' group by la.req_user_id");
		while($qrow_sm=mysql_fetch_assoc($qrow_)){
		$sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
		$user_id = $qrow_sm['user_id'];
		$sm_email = $qrow_sm['email'];
		$link_referrer = "http://elegant.nezakenya.com/compadm/?acc_type=".$_SESSION['COMSYS_AccountType']."&site_id=".$_SESSION['COMSYS_SiteID']."&sec=req&act=view_req&req_ref=".$req_ref_no."&referrer=email&user_id=".$user_id."";
		//echo $sm_email;
		//create a notification to alert all system users
		$qR = mysql_query("select * from temp_requisitions where req_ref_no='$req_ref_no'");
		$qRow=mysql_fetch_array($qR);
		$title = 'New Requisition -'.$ref_no;
		$cont = 'Hi, '.$sm_name.' you have a new pending requisition requiring your approval.<br/>';
		$cont .='<table width="100%" border="0" class="table table-striped" style="font-size:16px; border:2px solid #000; ">
		<thead> 
		  <tr>
			<td colspan="2"><h3>Requisition Form</h3></td>
		  </tr>
		  </thead>
		  <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Req No:</strong></div></td>
			<td>'.$ref_no.'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Requisition Name:</strong></div></td>
			<td>'.$qRow['req_name'].'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Site:</strong></div></td>
			<td>'.$_SESSION['COMSYS_SiteName'].'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Requested by:</strong></div></td>
			<td>'.$qRow['requested_by'].'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Request Date:</strong></div></td>
			<td>'.$qRow['req_date'].'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Request Time:</strong></div></td>
			<td>'.$qRow['req_time'].'</td>
		  </tr>
		   <tr>
			<td><div align="right"></div></td>
			<td><a target="_blank" class="alert alert-success" href="'.$link_referrer.'">Approve Request</a></td>
		  </tr>
		   <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		  </tr>
		</table>';
		$save_notif =mysql_query("insert into notifications(notification_title,notification_body,
		sender_id,recepient_id,notification_date,notification_time,site_id,ref,link_ref)
		values('$title','$cont','".$_SESSION['COMSYS_UserID']."','$user_id',curdate(),curtime(),'".$_SESSION['COMSYS_SiteID']."','$ref_no','$link_referrer')");
		//if successfull now send the email
		if($save_notif){
		
	         //send a notification email
				$mail->addAddress(''.$sm_email.'', 'Elegant Properties (CMA)');
				$mail->addReplyTo('info@nezakenya.com', 'Elegant Properties(CMA)');
				$mail->WordWrap = 50;
				$mail->isHTML(true);
				$mail->Subject = 'New Requisition Confirmation - '.$ref_no.'';
				$mail->Body = ' '.$cont.'. ';
				 //echo $mail->Body; 
				if(!$mail->send()) {
				   echo '<span class="error"> Message could not be sent.</span>';
				   echo '<span class="error">Mailer Error: ' . $mail->ErrorInfo.'</span>';
				   echo '<span class="error">There was an error sending notification email</span>';
				  // exit;
				  //now let's empty the temporary requisitions table
				}else{
					echo '<div class="alert alert-success">Requisition has been sent successfully!</div>';
					$empty = mysql_query("delete from temp_requisitions where req_ref_no='$req_ref_no'");
				}
			  // Clear all addresses 
              $mail->clearAddresses();
    		 //Clear all attachments
    		 $mail->clearAttachments(); 
		}else{
			echo '<span class="error">Notification Error. '.mysql_error().'</span>';
		}
		}
		}else{
			
		echo '<span class="error">Error sending requisition. Please try again or contact administrator '.mysql_error().'</span>';	
		}
	//unset the session variable for requisitions
	unset($_SESSION['COMSYS_ReqRefNo']);		
}



?>