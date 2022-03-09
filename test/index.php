<?php
ob_start(); 
include('../connect_db/connect_db.php');
if(isset($_GET['referrer']) && $_GET['referrer']=='email'){
$user_id = sanitize_string($_GET['user_id']);
//get user details
		$qr_row = mysql_fetch_assoc(mysql_query("select * from users as us left join sites as s on s.site_id = us.site_id where us.user_id='".$user_id."'"));
		
		if($qr_row){		
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
		
		}
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
}
//redirect all no logged in users
if(!isset($_SESSION['COMSYS_UserID']) && $_SESSION['COMSYS_UserID']==''){
echo '<script>
window.location.href="../";
</script>';	
}
//site idate
$site_id = $_SESSION['COMSYS_SiteID'];
//url of this page
function curPageURL() {

 $pageURL = 'http';

 if($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {

 $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 }else{
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
return $pageURL;
}

//lets save the url in session
$_SESSION['COMSYS_CurrentPageUrl'] = curPageURL();
mysql_query("delete from requisition_approvals where req_user_id='0'");
mysql_query("delete from lpo_approvals where lpo_user_id='0'");
mysql_query("delete from inward_approvals where inw_user_id='0'");
mysql_query("delete from delivery_approvals where del_user_id='0'");
?>
<style>
.sidebar-nav li a,.sidebar-nav li a:active,.sidebar-nav li a:focus{text-decoration:none}body,html{padding:0;margin:0}body{font-family:Roboto,sans-serif;position:relative;font-weight:200px;background-image:url(../images/bg_1.gif);font-size:12px}body *{text-shadow:none}nav:not(.mm-menu){display:none}.footer,.header{background:#000;font-size:16px;font-weight:700;color:#fff;line-height:40px;-moz-box-sizing:border-box;box-sizing:border-box;width:100%;height:40px;padding:0 50px}.error,.show{font-size:12px}.header.fixed{position:fixed;top:0;left:0}.footer.fixed{position:fixed;bottom:0;left:0}.header a{display:block;width:28px;height:50px;padding:11px;position:absolute;top:0;left:0}.header a:after,.header a:before{content:'';display:block;background:#fff;height:2px}.header a span{background:#fff;display:block;height:2px;margin:6px 0}.content{padding:10px;margin:20px}#suggest_list ul{background-color:#fff}.show{font-family:tahoma;padding:4px;width:500px;background-color:#F2F2F2;border:1px solid #999797}.login-form h2,.signup-form h2,h1,h2,h3,h4,h5,h6{font-family:Roboto,sans-serif}.show:hover{background-color:#BDBDBD;cursor:pointer;width:500px}#suggest_list_div{margin-left:+50px;padding:5px;width:600px}.error{color:red}.my-form-control{display:block;height:25px;padding:2px;margin-bottom:2px;font-size:12px;line-height:1.42857143;color:#555;background-color:#fff;background-image:none}.my-form-control:focus{border-color:#66afe9;outline:0;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)}.my-form-control::-moz-placeholder{color:#999;opacity:1}.my-form-control:-ms-input-placeholder{color:#999}.my-form-control::-webkit-input-placeholder{color:#999}.show,.show:hover>a{color:#FF5733}.my-form-control::-ms-expand{background-color:transparent;border:0}# .error,.success{color:#FFF;font-weight:700;padding:1px;border:1px solid #CCC;width:100%;float:left}.my-form-control[disabled],.my-form-control[readonly],fieldset[disabled] .my-form-control{background-color:#eee;opacity:1}.my-form-control[disabled],fieldset[disabled] .my-form-control{cursor:not-allowed}# .error{background:red}.success{background:#3C6}.login-form{background:#FFF;border:1px solid grey;padding:10px;margin:30px;width:100%}.login-form h2,.signup-form h2{color:#696763;font-size:18px;font-weight:300;margin-bottom:30px}.login-form form input,.signup-form form input,.signup-form form select{background:#F0F0E9;border:1px solid grey;color:#09F;display:block;font-family:Roboto,sans-serif;font-size:14px;font-weight:300;height:40px;margin-bottom:10px;outline:0;padding-left:10px;width:100%}.login-form form button,.or,.signup-form form button{background:#FE980F;color:#FFF;font-family:Roboto,sans-serif}.login-form form input:focus,.signup-form form input:focus{border:1px solid #09F}.login-form form span{line-height:25px}.login-form form span input{float:left;height:15px;margin-right:5px}.login-form form button{margin-top:23px}.login-form form button,.signup-form form button{border:none;border-radius:0;display:block;padding:6px 25px}.login-form label input{border:none;display:inline-block;height:0;margin-bottom:0;outline:0;padding-left:0}.or{border-radius:40px;font-size:16px;height:50px;line-height:50px;margin-top:75px;text-align:center;width:50px}#wrapper{padding-left:0;-webkit-transition:all .5s ease;-moz-transition:all .5s ease;-o-transition:all .5s ease;transition:all .5s ease}#wrapper.toggled{padding-right:250px}#sidebar-wrapper{z-index:1000;position:fixed;right:250px;width:0;height:100%;margin-right:-250px;overflow-y:auto;background:#000;-webkit-transition:all .5s ease;-moz-transition:all .5s ease;-o-transition:all .5s ease;transition:all .5s ease}#wrapper.toggled #sidebar-wrapper{width:250px}#page-content-wrapper{width:100%;position:absolute;padding:15px}#wrapper.toggled #page-content-wrapper{position:absolute;margin-right:-250px}.sidebar-nav{position:absolute;top:0;width:250px;margin:0;padding:0;list-style:none}.sidebar-nav li{text-indent:20px;line-height:40px}.sidebar-nav li a{display:block;color:#999}.sidebar-nav li a:hover{text-decoration:none;color:#fff;background:rgba(255,255,255,.2)}.sidebar-nav>.sidebar-brand{height:65px;font-size:18px;line-height:60px}.sidebar-nav>.sidebar-brand a{color:#999}.sidebar-nav>.sidebar-brand a:hover{color:#fff;background:0 0}@media(min-width:768px){#wrapper{padding-right:250px}#wrapper.toggled{padding-right:0}#sidebar-wrapper{width:250px}#wrapper.toggled #sidebar-wrapper{width:0}#page-content-wrapper{padding:20px;position:relative}#wrapper.toggled #page-content-wrapper{position:relative;margin-right:0}}

</style>
<script>
function printContent(el){
	var restorepage = document.body.innerHTML;
	var printcontent = document.getElementById(el).innerHTML;
	document.body.innerHTML = printcontent;
	window.print();
	document.body.innerHTML = restorepage;
}

</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Elegant Properties(CMA): My Account</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<link href="../css/dataTables.bootstrap.css" rel="stylesheet" /> 
<link type="text/css" rel="stylesheet" href="../js/jquery.mmenu.css" />
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
<script src="../js/jquery.dataTables.js"></script>
<script src="../js/dataTables.bootstrap.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.scrollUp.min.js"></script>
<script src="../js/main.js"></script>
	<script type="text/javascript" src="../js/jquery.mmenu.js"></script>
		<script type="text/javascript">
			$(function() {
				$('nav#menu').mmenu();
			});
		</script>
</head><!--/head-->
	<body>
		<div id="page">
			<div class="header" style="height:120px;">
				<a href="#menu" style="width:50px;"><span></span></a>
				<img src="../images/RealexLogoSmall.png" height="100px" width="100px"  alt="Elegant Properties Ltd" /> 
			</div>
			<div class="content">
			    
			    	<?php
				$secType = sanitize_string($_GET['sec']);
				switch($secType){
					case 'req':
					include('../sections/manage_requisitions.html');
					break;
					case 'lpos':
					include('../sections/manage_lpos.html');
					break;
					case 'st':
					include('../sections/manage_stores.html');
					break;
					case 'sup':
					include('../sections/manage_suppliers.html');
					break;
					case 'inw':
					include('../sections/manage_inwards.html');
					break;
					case 'prof':
					include('../sections/manage_profile.html');
					break;
					case 'sites':
					include('../sections/manage_sites.html');
					break;
					case 'us':
					include('../sections/manage_users.html');
					break;
					case 'del':
					include('../sections/manage_deliveries.html');
					break;
				    case 'notif':
					include('../views/notifications.html');				
					break;
					default:
					//include('../section/company_statistics.html');
					break;					
				}

				?>
		  
			</div>
			<?php
                  //check user's roles
				   $role = $_SESSION['COMSYS_UserRole'];
				   //switch through all the user types
				   switch($role){
					  case 'RequisitionManager';
						include('../sidebars/requisition_sidebar.html');
						break;
						case 'LPOManager';
						include('../sidebars/lpos_sidebar.html');
						break;
						case 'StoresManager';
						include('../sidebars/stores_sidebar.html');
						break;
						case 'SiteAdmin';
						include('../sidebars/siteadmin_sidebar.html');
						break;
						case 'CompanyAdmin';
						include('../sidebars/compadmin_sidebar.html');
						break;
						case 'SiteManager';
						include('../sidebars/sitemanager_sidebar.html');
						break;
						default;
						include('../sidebars/default_sidebar.html');
						break; 
				   }

					 ?>	
	<div id="sidebar-wrapper">
<script>
$(function(){function n(){$(".nn-alert").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend",function(){$(this).html(""),$(this).addClass("hide")})}function t(n){n.addClass("animated bounceOutLeft")}$(".nn-alert-container").on("click",".nn-alert",function(){t($(this))}),n(),$(".color").click(function(){$(".nn-alert").removeClass("pink purple blue glass").addClass($(this).attr("class"))});var i=0;setInterval(function(){t($(".nn-alert").eq(i)),i++},2e3)}),function(n){n(document).ready(function(){$container=n("#notifications"),$container.load("../process/short_notifications.php");setInterval(function(){$container.load("../process/short_notifications.php")},6e3)})}(jQuery);

</script>

<div id="notifications" style="margin:10px;">
<!-- Load Notifications here !-->
</div>

    </div>  
         </div>
	</body>
</html>