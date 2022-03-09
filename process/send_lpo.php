<?php
include('../connect_db/connect_db.php');
//get all the data from the temporary requisition table
$lpo_ref_no = sanitize_string($_POST['lpo_no_send']);

if(empty($lpo_ref_no)){
	
	die('<script> alert("There was an error sending request to server!");</script>');
}else{
	
$qR = mysql_query("select * from temp_lpos where lpo_ref_no ='$lpo_ref_no'");
//loop through all the records
$count_rows = mysql_num_rows($qR);
if($count_rows==0){
	die('<span class="error">You do not have any materials in cart to save!</span>');
}
//count rows affected
$count = 0;
while($qRow=mysql_fetch_array($qR)){
	$count++;
	$lpo_ref_no =  $qRow['lpo_ref_no'];
	$req_ref_no = $qRow['req_ref_no'];
	$req_file_no = $qRow['req_file_no'];
	$lpo_user_id = $qRow['lpo_user_id'];
	$lpo_approve_id = $qRow['lpo_approve_id'];
	$mat_id = $qRow['mat_id'];
	$qty = $qRow['qty'];
	$lpo_details = $qRow['lpo_details'];
	$price = $qRow['price'];
	$lpo_date = $qRow['lpo_date'];
	$exp_date = $qRow['exp_date'];
	$pack_id = $qRow['pack_id'];
	$site_id = $qRow['site_id'];
	$sup_id = $qRow['sup_id'];
	$total = $qty * $price;
	//save all these records following the same order in the database
	$save = mysql_query("insert into lpos (lpo_user_id,exp_date,req_ref_no,lpo_file_no,lpo_details,qty,mat_id,pack_id,site_id,lpo_ref_no,lpo_date,lpo_time,lpo_status,lpo_approve_id,sup_id,total_lpo,site_code,price)
	values('$lpo_user_id','$exp_date','$req_ref_no','$lpo_file_no','$lpo_details','$qty','$mat_id','$pack_id','$site_id','$lpo_ref_no','$lpo_date',curtime(),'New','$lpo_approve_id','$sup_id','$total','$site_code','$price')");
}
		if(($count==$count_rows) && $save){
		//now let's empty the temporary lpos table
				$empty = mysql_query("delete from temp_lpos where lpo_ref_no='$lpo_ref_no'");
				//loop through the records to get
				//details of persons to approve LPO
				
				$query_sm = mysql_query("select * from lpo_approvals as la left join users as us on us.user_id = la.lpo_user_id
				where la.lpo_user_id >0 and la.lpo_ref_no ='$lpo_ref_no' group by lpo_user_id");
				while($qrow_sm=mysql_fetch_assoc($query_sm)){
					   $sm_name = $qrow_sm['fname'].' '.$qrow_sm['lname'];
					   $user_id = $qrow_sm['user_id'];
						$sm_email = $qrow_sm['email'];
						//lets get the site id for this materials
						$Qr_s = mysql_fetch_assoc(mysql_query("select site_name from sites where site_id='$site_id'"));
						$site_name = $Qr_s['site_name'];
					//create a notification to alert all system users
					$title = 'New LPO -'.$lpo_ref_no;
					$cont = 'Hi, '.$sm_name.' you have a new pending LPO requiring your approval. This LPO with Ref No '.$lpo_ref_no.' is for materials requested for '.$site_name.'
					and has been prepared by '.$_SESSION['COMSYS_FName'].' ';
					$save_notif =mysql_query("insert into notifications(notification_title,notification_body,
					sender_id,recepient_id,notification_date,notification_time,site_id,ref)
					values('$title','$cont','".$_SESSION['COMSYS_UserID']."','$user_id',curdate(),curtime(),'".$_SESSION['COMSYS_SiteID']."','$lpo_ref_no')");
				
			          	//if successfull now send the email												
						 //send a notification email
							$mail->addAddress(''.$sm_email.'', 'Elegant Properties (CMA)');
							$mail->addReplyTo('info@nezakenya.com', 'Elegant Properties (CMA)');
							$mail->WordWrap = 50;
							$mail->isHTML(true);
							$mail->Subject = 'New LPO Confirmation - '.$lpo_ref_no.'';
							$mail->Body    = ' '.$cont.'. Please follow this <a href="http://elegant.nezakenya.com" target="_blank">link to log in </a> to your account and approve the LPO';
						//echo $mail->Body; 
				}
				
				//if temp table has been cleared
				if($save_notif&&$empty){
				echo '<span class="success">LPO has been sent successfully!</span>';
	//redirect to upload file page
	 // $url = '../compadm/?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=upload_lpo';
			//echo'
			//<script>
			//setTimeout(function(){window.location="'.$url.'";}, 3000); 

			//</script>';				
				}else{					
				echo '<span class="error">LPOS Temp table values not cleared '.mysql_error().'</span>';	
				}	
					if(!$mail->send()) {
							   echo '<span class="error"> Message could not be sent.</span>';
							   echo '<span class="error">Mailer Error: ' . $mail->ErrorInfo.'</span>';
							   exit();
							}				
		}else{
			
		echo '<div class="error">Error saving LPO. Please try again or contact administrator '.mysql_error().'</div>';	
		}
	
}



?>