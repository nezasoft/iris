<?php
include('../connect_db/connect_db.php');
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
	$qty = $_GET['qty'];
	$ref_no = $_GET['ref_no'];
	$req_id = $_GET['req_id'];
	$supplier = $_GET['supplier'];
    $filename = $_FILES["file"]["name"];
	$file_basename = substr($filename, 0, strripos($filename, '.')); // get file extention
	$file_ext = substr($filename, strripos($filename, '.')); // get file name
	$filesize = $_FILES["file"]["size"];
	$allowed_file_types = array('.pdf');
		
	if(in_array($file_ext,$allowed_file_types) && ($filesize < 5000000)){	
		// Rename file
		$newfilename = md5($file_basename).$file_ext;
		//check if file has been uploaded
		  $check_file = mysql_query("select req_id from requisitions where req_id='".$req_id."' and lpo_file_name='".$newfilename."' limit 1");
		  $num_rows = mysql_num_rows($check_file);
		if(file_exists("../lpo_files/".$newfilename) && $num_rows==1){
			die('<div class="alert alert-close alert-danger">
				<div class="alert-content">
					   <h4 class="alert-title"> <i class="glyph-icon  icon-times" ></i>Error</h4>     
					   <p>*File already exists</p>
				   </div>
				  </div>');
		}else{		
			move_uploaded_file($_FILES["file"]["tmp_name"], "../lpo_files/" . $newfilename);
			
			$update = mysql_query("UPDATE requisitions SET supplier_id='".$supplier."',lpo_file_name='".$newfilename."', qty='".$qty."',lpo_status='Completed',req_status='LPO Raised' WHERE req_id='".$req_id."'");
			echo '<div class="alert alert-close alert-success">
			<div class="alert-content">
				   <h4 class="alert-title"> <i class="glyph-icon  icon-check-cirle" ></i>Success!</h4>     
				   <p>File uploaded successfully. LPO details updated against requisition item</p>
			   </div>
			  </div>';	
			  echo '<script>
        		 window.setTimeout(function(){
        		// Move to a new location or you can do something else
        		window.location.href="#";
        		}, 5000);
        		</script>';
		}

	}elseif(empty($file_basename)){	
		// file selection error
		   die('<div class="alert alert-close alert-danger">
				<div class="alert-content">
					   <h4 class="alert-title"> <i class="glyph-icon  icon-times" ></i>Upload Error</h4>     
					   <p>*Please select file to upload</p>
				   </div>
		     </div>');
	}elseif($filesize>5000000){	
		  die('<div class="alert alert-close alert-danger">
				<div class="alert-content">
					   <h4 class="alert-title"> <i class="glyph-icon  icon-times" ></i>Upload Error</h4>     
					   <p>*The file you are trying to upload is too large. File should not exceed 5MB.</p>
				   </div>
				  </div>');
	}else{
		// file type error
		die('<div class="alert alert-close alert-danger">
				<div class="alert-content">
					   <h4 class="alert-title"> <i class="glyph-icon  icon-times" ></i>Upload Error</h4>     
					   <p>*Only these file types are allowed for upload: '.implode(', ',$allowed_file_types).'</p>
				   </div>
				  </div>');
		unlink($_FILES["file"]["tmp_name"]);		
	}
}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}

?>