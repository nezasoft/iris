<?php
include('../connect_db/connect_db.php');
require '../PHPMailer/PHPMailerAutoload.php';
     //get all the data from the temporary requisition table
    $inward_ref_no = sanitize_string($_POST['inward_no_send']);
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
    
if(empty($inward_ref_no)){
	die('<script> alert("There was an error sending request to server!");</script>');
}else{	
$qR = mysql_query("select * from temp_inward where g_ref_no='$inward_ref_no'");
//loop through all the records
$count_rows = mysql_num_rows($qR);
if($count_rows==0){	
	die('<div class="alert alert-success">You do not have any items in cart to save!</div>');
}
//count rows affected
$count = 0;
while($qRow=mysql_fetch_array($qR)){
$count++;	
$req_ref_no =  $qRow['req_no'];
$inward_ref_no =  $qRow['g_ref_no'];
$req = $qRow['req_no'];
$del_note = $qRow['delivery_note_no'];
$vehicle_no = $qRow['vehicle_no'];
$delivered_by = $qRow['g_delivered_by'];
$sup_name = $qRow['sup_id'];
$check_name = $qRow['checked_by'];
$confirm_name = $qRow['confirmed_by'];
$mat_name = $qRow['g_mat_id'];
$by_name = $qRow['received_by'];
$pack_name = $qRow['pack_id'];
$qty = $qRow['g_qty'];
$desc = $qRow['g_desc'];
$site = $qRow['site_code'];
$date= $qRow['g_date'];
$time = $qRow['g_time'];
//save all these records following the same order in the database
$save = mysql_query("insert into goods_inwards(g_mat_id,req_no,site_code,g_ref_no,g_user_id,g_date,g_time,delivery_note_no,g_qty,g_desc,g_delivered_by,
		vehicle_no,sup_id,checked_by,confirmed_by,received_by,pack_id,site_id)values('$mat_name','$req','$site','$inward_ref_no','".$_SESSION['COMSYS_UserID']."',
		'$date','$time','$del_note','$qty','$desc','$delivered_by','$vehicle_no','$sup_name','$check_name','$confirm_name','$by_name','$pack_name','".$_SESSION['COMSYS_SiteID']."')");
	
}
		if(($count==$count_rows) && $save){
		    echo '<div class="alert alert-success">Inward has been saved successfully!</div>';
		//now let's empty the temporary inwards
		$empty = mysql_query("delete from temp_inward where g_ref_no='$inward_ref_no'");				
		//update lpos to completed
		$comp = mysql_query("update requisitions set lpo_status='Completed' and locked='1' where req_ref_no='$req'");
		//if temp table has been cleared
		if($empty&&$comp){
			
		
		//get the details of site administrator
	    $qr4 = mysql_query("select * from inward_approvals as la left join users as us on us.user_id = la.inw_user_id
				where  la.inw_ref_no ='$inward_ref_no' group by la.inw_user_id,la.inw_ref_no");
	    while($qrow_sm=mysql_fetch_assoc($qr4)){
		$sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
		$user_id = $qrow_sm['user_id'];
		$sm_email = $qrow_sm['email'];
		$link_referrer = "http://elegant.nezakenya.com/compadm/?acc_type=".$_SESSION['COMSYS_AccountType']."&site_id=".$_SESSION['COMSYS_SiteID']."&sec=inw&act=view_inw&inw_ref=".$inward_ref_no."&referrer=email&user_id=".$user_id."";
		//create a notification to alert all system users
		$title = 'New Inward -'.$inward_ref_no;
		$cont = 'Hi, '.$sm_name.' you have a new pending inward requiring your approval.<br/><br/>';		
		$cont .='<table width="100%" border="0" class="table table-striped" style="font-size:16px; border:2px solid #000;">
		<thead> 
		  <tr>
			<td colspan="2"><h3>Inward Form</h3></td>
		  </tr>
		  </thead>
		  <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		  </tr>
		  <tr>
			<td><div align="right"><strong>Inward No:</strong></div></td>
			<td>'.$inward_ref_no.'</td>
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
				$mail->Subject = 'New Inward Confirmation - '.$inward_ref_no.'';
				$mail->Body = ' '.$cont.'. ';
				 //echo $mail->Body; 
				if(!$mail->send()) {
				   echo '<div class="alert alert-danger"> Message could not be sent.</div>';
				   echo '<div class="alert alert-danger">Mailer Error: '.$mail->ErrorInfo.'</div>';
				   echo '<div class="alert alert-danger">There was an error sending notification email</div>';
				  // exit;
				  //now let's empty the temporary requisitions table
			
				}else{
					echo '<div class="alert alert-success">Inward has been sent successfully!</div>';
					$empty = mysql_query("delete from temp_inward where g_ref_no='$inward_ref_no'");
				}
				
		}
    	// Clear all addresses 
         $mail->clearAddresses();
    	//Clear all attachments
    	 $mail->clearAttachments(); 	 
}		
				}else{					
				echo '<span class="error">Inward Temp table values not cleared '.mysql_error().'</span>';	
				}	
				
		}else{
			
		echo '<div class="error">Error saving INWARD. Please try again or contact administrator '.mysql_error().'</div>';	
		}
				
}



?>