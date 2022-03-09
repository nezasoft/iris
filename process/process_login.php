<?php

include('../connect_db/connect_db.php');
// Include and instantiate the class.
require_once('../mobile_detect.php');
$detect = new Mobile_Detect;
// Any mobile device (phones or tablets).
if($detect->isMobile() ) {
 $_SESSION['COMSYS_IS_MOBILE']=1;
}else{
$_SESSION['COMSYS_IS_MOBILE']=0;
}
 
// Any tablet device.
if( $detect->isTablet() ){
  $_SESSION['COMSYS_IS_MOBILE']=1;
}else{
$_SESSION['COMSYS_IS_MOBILE']=0;
}
 
// Exclude tablets.
if( $detect->isMobile() && !$detect->isTablet() ){
 $_SESSION['COMSYS_IS_MOBILE']=1;
}else{
$_SESSION['COMSYS_IS_MOBILE']=0;
}
//check for potential hacks

    function getRealIp() {
       if (!empty($_SERVER['HTTP_CLIENT_IP'])) {  //check ip from share internet
         $ip=$_SERVER['HTTP_CLIENT_IP'];
       } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {  //to check ip is pass from proxy
         $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
       } else {
         $ip=$_SERVER['REMOTE_ADDR'];
       }
       return $ip;
    }
	

    function writeLog($where) {
    
    	$ip = getRealIp(); // Get the IP from superglobal
    	$host = gethostbyaddr($ip);    // Try to locate the host of the attack
    	$date = date("d M Y");
    	
    	// create a logging message with php heredoc syntax
    	$logging = <<<LOG
    		\n
    		<< Start of Message >>
    		There was a hacking attempt on your form. \n 
    		Date of Attack: {$date}
    		IP-Adress: {$ip} \n
    		Host of Attacker: {$host}
    		Point of Attack: {$where}
    		<< End of Message >>
LOG;
       // open log file
    		if($handle = fopen('../hacklog.log', 'a')) {
    		
    			fputs($handle, $logging);  // write the Data to file
    			fclose($handle);           // close the file
    			
    		} else {  // if first method is not working, for example because of wrong file permissions, email the data
    		
    			$to = 'axysads@gmail.com';  
            	$subject = 'HACK ATTEMPT';
            	$header = 'From: axysads@gmail.com';
            	if (mail($to, $subject, $logging, $header)) {
            		echo "Sent notice to System Administrator.";
            	}
    
    		}
			
	}
//save input errors

$error = array();

	$pass = sanitize_string($_POST['password']);
	//$ver_code = sanitize_string($_POST['ver_code']);
	$email= sanitize_string($_POST['email']);
	
	if(empty($pass)){
		$error = 'Enter your password';

	}
	if(empty($email)){
		$error = 'Enter email address';
	}
	if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
		$error = 'Enter a valid email address';
	}
	
	//check email
	$ch_email = mysql_num_rows(mysql_query("select email from users where email='$email' limit 1"));
	
	if($ch_email==0){
		$error ='There\'s no account associated with the email address';
		
	}
	//check password and account
	$ch_acc=mysql_num_rows(mysql_query("select email, password from users where password='".create_pass_hash($pass)."' and email='$email' limit 1"));
	
	if($ch_acc==0){
		$error ='Wrong Password!';
		
	}
	//check for any input errors
	if(empty($error)){
		//get user details
		$qr_row = mysql_fetch_assoc(mysql_query("select * from users as us left join sites as s 
		on s.site_id = us.site_id where us.password='".create_pass_hash($pass)."' and us.email='$email'"));
		
		if($qr_row){
		echo '<div class="alert alert-success">Login Successfull! Redirecting...</div>';	
		
		$site_id = $qr_row['site_id'];
		$user_id =  $qr_row['user_id'];
		$fname = $qr_row['fname'] ;
		$lname = $qr_row['lname'] ;
		$user_role = $qr_row['user_role'];
		$site_name = $qr_row['site_name'] ;
		$site_code = $qr_row['site_code'] ;
		$site_phone = $qr_row['site_phone'] ;
		$site_post = $qr_row['site_postal'] ;
		$site_email = $qr_row['site_email'] ;
		$site_addr = $qr_row['site_address'] ;
		//save in session
		$_SESSION['COMSYS_UserID'] = $user_id;
		$_SESSION['COMSYS_SiteID'] = $site_id;
		$_SESSION['COMSYS_FName'] = $fname;
		$_SESSION['COMSYS_UserRole'] = $user_role;
		$_SESSION['COMSYS_SitePhone'] = $site_phone;
		$_SESSION['COMSYS_SiteEmail'] = $site_email;
		$_SESSION['COMSYS_SiteAddress'] = $site_addr;
		$_SESSION['COMSYS_SiteName'] = $site_name;
		$_SESSION['COMSYS_AccountType'] = $user_role;
		$_SESSION['COMSYS_SiteCode'] = $site_code;
		$_SESSION['COMSYS_SitePostal'] = $site_post;
		// Any mobile device (phones or tablets).
        if($detect->isMobile() ) {
        $_SESSION['COMSYS_IS_MOBILE']=1;
        }
         
         
        // Exclude tablets.
        if( $detect->isMobile() && !$detect->isTablet() ){
         $_SESSION['COMSYS_IS_MOBILE']=1;
        }
         
        // Check for a specific platform with the help of the magic methods:
        if( $detect->isiOS()){
         $_SESSION['COMSYS_IS_MOBILE']=1;
        }
         
        if($detect->isAndroidOS() ){
         $_SESSION['COMSYS_IS_MOBILE']=1;
        }
		//$_SESSION['COMSYS_SiteCode'] = $site_id;
		//redirect if all in session
		
		if(isset($_SESSION['COMSYS_UserID']) && $_SESSION['COMSYS_UserID']!=''){
			//check role of user
			if($_SESSION['COMSYS_UserRole']=='CompanyAdmin'){
				
			//$site_id=0;
			//$_SESSION['COMSYS_SiteID'] = $site_id;
			//redirect to company admin account
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req#man_req';
			echo '<script>
			    setTimeout(function(){window.location="'.$url.'";}, 1000); 
				</script>';
				
			}elseif($_SESSION['COMSYS_UserRole']=='SiteManager'){
				//redirect to company admin account
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req#man_req';
			    echo '<script>
			    setTimeout(function(){window.location="'.$url.'";}, 1000); 
				</script>';
			}elseif($_SESSION['COMSYS_UserRole']=='SiteAdmin'){
				$site_id=$_SESSION['COMSYS_SiteID'];
          //redirect to site administrator
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=man_inw#man_inw';
			echo '<script>
			   setTimeout(function(){window.location="'.$url.'";}, 1000); 
			</script>';
			}elseif($_SESSION['COMSYS_UserRole']=='RequisitionManager'){
				$site_id=$_SESSION['COMSYS_SiteID'];
          //redirect to requisition account
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req#man_req';
			echo '<script>
			   setTimeout(function(){window.location="'.$url.'";}, 1000); 
			</script>';
			}elseif($_SESSION['COMSYS_UserRole']=='LPOManager'){
				$site_id=$_SESSION['COMSYS_SiteID'];
          //redirect to LPO Manager account
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=man_lpos#man_lpos';
			echo '<script>
			   setTimeout(function(){window.location="'.$url.'";}, 1000); 
			</script>';
			}elseif($_SESSION['COMSYS_UserRole']=='StoresManager'){
			$site_id=$_SESSION['COMSYS_SiteID'];
			//stores manager account
			$url = 'compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=man_st#man_st';
			echo '<script>
			   setTimeout(function(){window.location="'.$url.'";}, 1000); 
			</script>';
					
			}
			
/*
$mail->addAddress('axysads@gmail.com', 'Elegant Properties');
$mail->addReplyTo('admin.support@gigabyte.co.ke', 'Gigabyte Systems');
$mail->WordWrap = 50;
$mail->isHTML(true);
$mail->Subject = 'CMA Account Login Notification';
$mail->Body    = 'The user '.$fname.' '.$lname.' has successfully logged in to the system on '.date('Y-m-d').' at '.date('h:m:s').'';
 //echo $mail->Body; 
if(!$mail->send()) {
   //echo '<span class="error"> Message could not be sent.</span>';
   //echo '<span class="error">Mailer Error: ' . $mail->ErrorInfo.'</span>';
   exit;
}*/
  
}

		}else{
			
			echo '<div class="alert alert-danger">Error occurred sending request to server. Please try again '.mysql_error().'</div>';
		}
		
	}else{
		//display error	
		echo '<br/><div class="alert alert-danger"> * '.$error.'</div><br/>';	
	}
?>