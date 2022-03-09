
<?php
ob_start(); 
include('../connect_db/connect_db.php');
?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>COMSYS: My Account</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/prettyPhoto.css" rel="stylesheet">
    <link href="../css/price-range.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
	<link href="../css/main.css" rel="stylesheet">
	<link href="../css/responsive.css" rel="stylesheet">
	   <link href="../css/dataTables.bootstrap.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	<script src="../js/jquery.js"></script>
	  <script src="../js/jquery.dataTables.js"></script>
    <script src="../js/dataTables.bootstrap.js"></script>
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@elegantproperties.co.ke</a></li>
								<li><a href="#"><i class="fa fa-user"></i> Hi, <?php echo $_SESSION['COMSYS_FName'];?></a></li>
							</ul>
						</div>
					</div>
				
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4-b">
						<div class="logo pull-left">
							<a href="../">Elegant Properties: CMA(Construction Management Application)</a>
						</div>
						<div class="btn-group pull-right">
					
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									SITES
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
								   <li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&AllSites">All Sites</a></li>
									<li><a href="#">Valley View</a></li>
									<li><a href="#">Ajman</a></li>
									<li><a href="#">Forest Scape</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=profile&action=my_profile"><i class="fa fa-user"></i> My Profile</a></li>
								<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=req&action=manage_req"><i class="fa fa-star"></i> Requisitions</a></li>
								<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=stores&action=manage_store"><i class="fa fa-shopping-cart"></i> Stores</a></li>		
								<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=suppliers&action=manage_suppliers"><i class="fa fa-user"></i> Suppliers</a></li>
								<li><a href="../logout?action=logout"><i class="fa fa-lock"></i> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
		
		</div><!--/header-bottom-->
	</header><!--/header-->
	

	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#req">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Requisitions
										</a>
									</h4>
								</div>
								<div id="req" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=req&action=new_req">Create New </a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=req&action=manage_req">Manage  Requisitions</a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#lpo">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											LPOs
										</a>
									</h4>
								</div>
								<div id="lpo" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=lpos&action=new_lpo">Create New</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=lpos&action=manage_lpo">Manage LPOs</a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#stores">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Stores
										</a>
									</h4>
								</div>
								<div id="stores" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=stores&action=new_store">Create New</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=stores&action=manage_stores">Manage Store</a></li>
										    <li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=stores&action=my_store">My Store</a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#suppliers">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Suppliers
										</a>
									</h4>
								</div>
								<div id="suppliers" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=suppliers&action=new_supplier">Create New</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=suppliers&action=manage_suppliers">Manage Suppliers</a></li>
										
											
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#myaccount">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											My Account
										</a>
									</h4>
								</div>
								<div id="myaccount" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=profile&action=change_pass">Change Password</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=profile&action=my_profile">My Profile</a></li>
											<li><a href="../logout?action=logout">Logout</a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sites">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Sites
										</a>
									</h4>
								</div>
								<div id="sites" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=sites&action=new_site">New Site</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=sites&action=manage_sites">Manage Sites</a></li>
											
										</ul>
									</div>
								</div>
							</div>
								<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#users">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Users & Accounts
										</a>
									</h4>
								</div>
								<div id="users" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=users&action=new_user">New User Account</a></li>
											<li><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&section=users&action=manage_users">Manage Users & Accounts</a></li>
											
										</ul>
									</div>
								</div>
							</div>
						
						</div><!--/category-products-->
					</div>
				</div>
				<?php
				$secType = sanitize_string($_GET['section']);
				
				switch($secType){
					case 'req':
					include('../sections/manage_requisitions.html');
					break;
					case 'lpos':
					include('../sections/manage_lpos.html');
					break;
					case 'stores':
					include('../sections/manage_stores.html');
					break;
					case 'suppliers':
					include('../sections/manage_suppliers.html');
					break;
					case 'profile':
					include('../sections/manage_profile.html');
					break;
					case 'sites':
					include('../sections/manage_sites.html');
					break;
					case 'users':
					include('../sections/manage_users.html');
					break;
					break;
					default:
					include('../section/company_statistics.html');
					break;					
				}
				
				
				?>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2015 Elegant Properties Inc. All rights reserved.</p>
					
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.scrollUp.min.js"></script>
	<script src="../js/price-range.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>
<?php ob_end_flush();?>