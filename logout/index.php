
<link rel="stylesheet" href="../css/styles.css"/>
<?php
//make connection to db
include('../connect_db/connect_db.php');

if(isset($_GET['action']) && $_GET['action']=='logout' ){
	
	//user has logged out, so end session
	session_destroy();
	//echo $_SESSION['METRO_BranchID'];
	//redirect user to home page
	if(!isset($_SESSION['COMSYS_UserID'])){
	
	echo '<script>
	window.location.href="../";
	</script>';	
	}else{
	echo '<script>
	window.location.href="../";
	</script>';	
		
	}
	
	
}else{
	
	echo '<span class="error">You are not authorized to access this content!</span>';
}

?>