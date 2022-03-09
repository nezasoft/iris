<?php
include('../connect_db/connect_db.php');
require '../PHPMailer/PHPMailerAutoload.php';
//get all the data from the temporary requisition table
   $del_ref_no = sanitize_string($_POST['del_no_send']);
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
if(empty($del_ref_no)){	
	die('<script> alert("There was an error sending request to server!");</script>');
}else{	
$qR = mysql_query("select * from temp_delivery_note where delivery_no='$del_ref_no'");
//check req_date
$check_req = mysql_num_rows(mysql_query("select * from delivery_note where delivery_no='".$del_ref_no."' limit 1"));
if($check_req==1){	
	die('<span class="error">Delivery has already been sent. Click on New Delivery to create a new one</span>');	
}
//loop through all the records
$count_rows = mysql_num_rows($qR);
if($count_rows==0){	
die('<span class="error">You do not have any materials in cart to send this delivery!</span>');
}
//count rows affected
$count = 0;
while($qRow=mysql_fetch_assoc($qR)){
	$count ++;
	$ref_no =  $qRow['delivery_no'];
	$site_name = $qRow['to_site_id'];
	$del_name = $qRow['delivery_name'];
	$taken_by = $qRow['taken_by'];
	$vehicle_no = $qRow['vehicle_no'];
	$user_id = $qRow['user_id'];
	$attention = $qRow['attn_user_id'];
	$mat_id = $qRow['mat_id'];
	$qty = $qRow['qty'];
	$del_details = $qRow['del_details'];
	$pack_id = $qRow['pack_id'];
	$site_id = $qRow['site_id'];
	//save all these records following the same order in the database
	$save = mysql_query("insert into delivery_note(delivery_no,mat_id,qty,del_details,del_time,del_date,pack_id,
		taken_by,to_site_id,from_site_id,user_id,attn_user_id,site_code,vehicle_no,delivery_name)
		values('$ref_no','$mat_id','$qty','$del_details',curtime(),curdate(),'$pack_id','$taken_by','$site_name',
		'".$_SESSION['COMSYS_SiteID']."','".$_SESSION['COMSYS_UserID']."','$attention','".$_SESSION['COMSYS_SiteCode']."','$vehicle_no','$del_name')");		
}
//lets identify the site these materials are going to
$qr_site = mysql_fetch_array(mysql_query("select * from sites where site_id='$site_name' limit 1"));
$site_name = $qr_site['site_name'];
		if(($count==$count_rows) && $save){		        
				//if temp table has been cleared
	        	$qr4 = mysql_fetch_assoc(mysql_query("select * from delivery_approvals as la left join users as us on us.user_id = la.del_user_id
				where  la.del_ref_no='$del_ref_no' group by la.del_user_id"));
				while($qrow_sm=mysql_fetch_assoc($qr4)){
				$sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
				$user_id = $qrow_sm['user_id'];
				$sm_email = $qrow_sm['email'];
				$link_referrer = "http://elegant.nezakenya.com/compadm/?acc_type=".$_SESSION['COMSYS_AccountType']."&site_id=".$_SESSION['COMSYS_SiteID']."&sec=del&act=view_del&del_ref=".$del_ref_no."&referrer=email&user_id=".$user_id."";
		//create a notification to alert all system users
		$title = 'New Delivery -'.$del_ref_no;
		$cont = 'Hi, '.$sm_name.' you have a new delivery requiring your approval. This delivery is for materials being sent to '.strtoupper($site_name).'  site from '.strtoupper($_SESSION['COMSYS_SiteName']).'<br/>';		
		$cont .='<table width="100%" border="0" class="table table-striped" style="font-size:16px; border:2px solid #000;">
		<thead> 
		  <tr>
			<td colspan="2"><h3>Delivery Note</h3></td>
		  </tr>
		  </thead>
		  <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Inward No:</strong></div></td>
			<td>'.$del_ref_no.'</td>
		  </tr>
	
		  <tr>
			<td><div align="right"><strong>Site:</strong></div></td>
			<td>'.$_SESSION['COMSYS_SiteName'].'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Recieved by:</strong></div></td>
			<td>'.$by_name.'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Receipt  Date:</strong></div></td>
			<td>'.$date.'</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Receipt Time:</strong></div></td>
			<td>'.$time.'</td>
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
		values('$title','$cont','".$_SESSION['COMSYS_UserID']."','$user_id',curdate(),curtime(),'".$_SESSION['COMSYS_SiteID']."','$inward_ref_no','$link_referrer')");		
		//if successfull now send the email
	    if($save_notif){
		          //send a notification email
				$mail->addAddress(''.$sm_email.'', 'Elegant Properties (CMA)');
				$mail->addReplyTo('info@nezakenya.com', 'Elegant Properties(CMA)');
				$mail->WordWrap = 50;
				$mail->isHTML(true);
				$mail->Subject = 'New Delivery Confirmation - '.$del_ref_no.'';
				$mail->Body = ' '.$cont.'. ';
				 //echo $mail->Body; 
				if(!$mail->send()) {
				   echo '<div class="alert alert-danger"> Message could not be sent.</div>';
				   echo '<div class="alert alert-danger">Mailer Error: '.$mail->ErrorInfo.'</div>';
				   echo '<div class="alert alert-danger">There was an error sending notification email</div>';
				  // exit;
				  //now let's empty the temporary requisitions table
			
				}else{
					echo '<div class="alert alert-success">Delivery has been sent successfully!</div>';
					$empty = mysql_query("delete from temp_delivery_note where delivery_no='$del_ref_no'");
				}
				
		}
		// Clear all addresses 
         $mail->clearAddresses();
    	//Clear all attachments
    	 $mail->clearAttachments(); 
   }
		}else{
			
		echo '<span class="error">Error sending delivery. Please try again or contact administrator '.mysql_error().'</span>';	
		}

	//unset the session variable for requisitions
				unset($_SESSION['COMSYS_ReqRefNo']);		
}



?>