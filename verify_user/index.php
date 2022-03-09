<?php
ob_start(); 
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

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Elegant Properties Ltd, Nairobi, Kenya, Real Estate">
    <meta name="author" content="Elegant Properties Ltd">
    <title>Elegant Properties Ltd</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/price-range.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
	<link href="../css/main.css" rel="stylesheet">
	<link href="../css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->    
    <link rel="apple-touch-icon" sizes="57x57" href="../images/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="../images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../images/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../images/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="../images/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../images/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="../images/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="../images/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../images/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon-16x16.png">
    <link rel="manifest" href="../images/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="../images/ms-icon-144x144.png">   
	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/main.js"></script>
</head><!--/head-->
<body class="full_bg">
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="top_shatter">
						<div class="contactinfo">
							<ul class="nav nav-pills">
							
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/RealexLogoSmall.png" height="100px" width="100px"  alt="Elegant Properties Ltd" /></li>
								
							  </ul>
						</div>
					</div>
				
				</div>
			</div>
		</div><!--/header_top-->
						<br/>
			</div>
		</div><!--/header-middle-->
	</header><!--/header-->
	<section>
			<div class="container">
			 <div class="col-sm-4" style="background-color:#fff;border:2px solid #616A6B;">
<?php
if(!isset($_GET['ver_code'])){
die('<br/><div  class="alert alert-danger">You do not have the rights to view this content!</div>');
}
echo '
<div  class="alert alert-success" id="verify"><font size="+1">Verifying, please wait... </font></div><br/><br/>
<script>

</script>';

if(!isset($_GET['ver_code']) && $_GET['ver_code']!='' ){
die('<div  class="alert alert-danger">You do not have the rights to view this content!</div>');
}else{
//get verification code
$ver_code = sanitize_string($_GET['ver_code']);
//check if the verification code is valid
$check_code = mysql_num_rows(mysql_query("select ver_code from users where ver_code='$ver_code' limit 1"));
	if($check_code==0){
		echo '<script>
		$(document).ready(function(){
			$("#verify").fadeOut();
			
		});
		</script>';
	echo '<br/><div  class="alert alert-danger">The activation code is not valid</div>';
	}else{
		echo '<div class="success" id="verify-success"><font size="+1">Verification successful! Let\'s get started!</font></div><br/><br/>';
		echo '<script>
		$(document).ready(function(){
			$("#verify").fadeOut();
			$("#verify-success").fadeIn(5000);
			 
			 });
		</script>';
		//include script for user to complete registration
		if($_SESSION['COMSYS_IS_MOBILE']==1){
		include('../views/complete_user_account.html');
		}elseif($_SESSION['COMSYS_IS_MOBILE']==0){
		include('../views/desktop/complete_user_account.html');
		}
		
	}
}

?>
				
			
			</div>
			</div>
		</div><br/>
	</section>
	
	<footer id="footer"><!--Footer-->

		<div class="footer-bottom" style="center">
			<div class="container">
				<div class="row">
					<p>Copyright &copy <?php  echo date('Y');?> Elegant Properties Ltd. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
 
</body>
</html>