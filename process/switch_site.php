<?php
include('../connect_db/connect_db.php');

$site_id = sanitize_string($_POST['site_id']);
$old_url = $_SESSION['COMSYS_CurrentPageUrl'];

if(!empty($site_id)){
	//switch site_id
	$_SESSION['COMSYS_SiteID']=$site_id;
	//site Name
	
	$qr_s = mysql_fetch_assoc(mysql_query("select site_name,site_code from sites where site_id='$site_id'"));
	$site_name = $qr_s['site_name'];
	$site_code = $qr_s['site_code'];
	//save the site name  in session 
	$_SESSION['COMSYS_SiteName']=$site_name;
	$_SESSION['COMSYS_SiteCode']=$site_code;
	//redirect user
		//$url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=prof&act=my_prof';
			echo '<script>
			//window.location.href="";
			    setTimeout(function(){window.location="'.$old_url.'";}, 1000); 
				</script>';
	
}

?>