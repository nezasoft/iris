<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$prod_name = sanitize_string($_POST['prod_name']);
$prod_desc = sanitize_string($_POST['prod_desc']);
$man_name = sanitize_string($_POST['man_name']);
$brand_name = sanitize_string($_POST['brand_name']);
$size_name = sanitize_string($_POST['size_name']);
$sup_name = sanitize_string($_POST['sup_name']);
$cat_name = sanitize_string($_POST['cat_name']);
$mat_id = sanitize_string($_POST['mat_id']);
	if(empty($prod_name)){
		$error = 'Material Name';	
	}
  if(empty($man_name)){
		$error = 'Manufacturer\'s Name';	
	}
	if(empty($brand_name)){
		$error = 'Brand Name';	
	}
	if(empty($size_name)){
		$error = 'Size Name';	
	}
		if(empty($cat_name)){
		$error = 'Select Category';	
	}
  if(empty($prod_desc)){
		$error = 'Material Description';	
	}

	if(empty($sup_name)){
			$error = 'Supplier Name';	
	}

	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("update materials set man_id='$man_name',brand_id='$brand_name',size_id='$size_name',
		mat_name='$prod_name',mat_cat_id='$cat_name',sup_id='$sup_name',
		description='$prod_desc' where mat_id='$mat_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';

			//now in session
			$_SESSION['COMSYS_MatID'] = $mat_id;
			//redirect to upload file page
  $url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=up_image#up_image';
        echo'
		<script>
		setTimeout(function(){window.location="'.$url.'";}, 3000); 
		</script>';	
		}else{
			echo '<br/><span class="error">Error Updating! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>