<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$prod_name = sanitize_string($_POST['prod_name']);
$man_name = sanitize_string($_POST['man_name']);
$brand_name = sanitize_string($_POST['brand_name']);
$size_name = sanitize_string($_POST['size_name']);
$prod_desc = sanitize_string($_POST['prod_desc']);
$sup_name = sanitize_string($_POST['sup_name']);
$cat_name = sanitize_string($_POST['cat_name']);
//$store_id = sanitize_string($_POST['store_id']);
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
//check material
$ch_mat = mysql_num_rows(mysql_query("select * from materials where sup_id='$sup_name' and mat_name='$prod_name' and size_id='$size_name' limit 1"));

//echo  $store_id;
	if($ch_mat==1){
		$error ='There\'s already an existing material in the store for this supplier with the same name';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into materials(man_id,size_id,brand_id,mat_name,mat_cat_id,sup_id,description,user_id)
		values('$man_name','$size_name','$brand_name','$prod_name','$cat_name','$sup_name','$prod_desc','".$_SESSION['COMSYS_UserID']."')");
		//if success
		if($save){
			echo '<br/><div  class="alert alert-success">Record Saved!</div><br/>';
			//lets get the product id and save it in session
			$qr2 = mysql_fetch_assoc(mysql_query("select last_insert_id(mat_id) as mat_id from materials order by mat_id desc"));
			$mat_id = $qr2['mat_id'];
	
		}else{
			echo '<br/><span class="error">Error Saving! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><div class="alert alert-danger">'.$error.'</div></br/>';
	}





?>