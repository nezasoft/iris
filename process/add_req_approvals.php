<?php
include('../connect_db/connect_db.php');
//save input errors
$error = array();
$user_id = sanitize_string($_POST['user_id']);
$req_id = sanitize_string($_POST['req_id']);
$ref_no = sanitize_string($_POST['ref_no']);

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
$req_ref_no =$ref_no;
$url = "?acc_type=".$_SESSION['COMSYS_AccountType']."&site_id=".$_SESSION['COMSYS_SiteID']."&sec=req&act=view_req&req_ref=".$req_ref_no;
$link_referrer = "http://elegant.nezakenya.com/compadm/?acc_type=".$_SESSION['COMSYS_AccountType']."&site_id=".$_SESSION['COMSYS_SiteID']."&sec=req&act=view_req&req_ref=".$req_ref_no."&referrer=email&user_id=".$user_id."";
if(empty($user_id)){
$error = 'Approving user';	
} 
//check user
$check = mysql_num_rows(mysql_query("select req_user_id from requisition_approvals where req_user_id='$user_id' and req_ref_no='".$ref_no."'  limit 1"));
if($check==1){
   die('<div class="alert alert-danger">User already exists in approvals</div>');		
}
$qR = mysql_query("select * from requisitions where req_ref_no='$req_ref_no'");
$qRow=mysql_fetch_array($qR);
	//check for errors	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into requisition_approvals(req_ref_no,req_user_id)values('$ref_no','$user_id')");
		//if success
		if($save){
		//if temp table has been cleared
	     $qrow_sm = mysql_fetch_assoc(mysql_query("select * from requisition_approvals as la left join users as us on us.user_id = la.req_user_id
		 where  la.req_ref_no='".$ref_no."' and la.req_user_id='".$user_id."' group by la.req_user_id"));
		 $sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
		 $user_id = $qrow_sm['user_id'];
		 $sm_email = $qrow_sm['email'];
		//create a notification to alert all system users
		$title = 'New Requisition -'.$ref_no;
		$cont = 'Hi, '.$sm_name.' you have a new pending requisition requiring your approval.<br/>';
		
		$cont .='<table width="100%" border="0" class="table table-striped" style="font-size:16px; border:2px solid #000;">
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
			<td>'.$req_name = $qRow['req_name'].'</td>
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
				}		
			
		}else{
			
			echo '<span class="error">Notification Error. '.mysql_error().'</span>';
		}
			echo '<br/><div class="alert alert-success">User added!</div><br/>';
			
			echo '<script>
			   setTimeout(function(){window.location="'.$url.'";}, 2000); 
			</script>';
		}else{
			echo '<br/><div class="alert alert-error">Error adding! '.mysql_error().'</div><br/>';			
		}		
	}else{		
		//display error message		
		echo '<br/><span class="alert alert-error">'.$error.'</span></br/>';
	}





?>