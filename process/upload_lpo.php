
<?php
include('../connect_db/connect_db.php');
if(isset($_FILES["file"]["type"]))
{
$validextensions = array("pdf");
$temporary = explode(".", $_FILES["file"]["name"]);
$file_extension = end($temporary);
if ((($_FILES["file"]["type"] == "application/pdf") ) && ($_FILES["file"]["size"] < 1000000)
&& in_array($file_extension, $validextensions)) {
if ($_FILES["file"]["error"] > 0)
{
echo "Return Code: " . $_FILES["file"]["error"] . "<br/><br/>";
}
else
{
if (file_exists("../uploaded_lpos/" . $_FILES["file"]["name"])) {
echo $_FILES["file"]["name"] . " <span id='invalid'><b>already exists.</b></span> ";
}
else
{
$file_name = time().'-'.$_FILES['file']['name'];
$sourcePath = $_FILES['file']['tmp_name']; // Storing source path of the file in a variable
$targetPath = "../uploaded_lpos/".$file_name; // Target path where file is to be stored
move_uploaded_file($sourcePath,$targetPath) ; // Moving Uploaded file

$save = mysql_query("insert into uploaded_lpos(user_id,lpo_file_name,upload_date,lpo_ref_no)
values('".$_SESSION['COMSYS_UserID']."','$file_name',now(),'".$_SESSION['COMSYS_LpoRefNo']."')");

	if($save){
		
	echo "<span class='success'>LPO Uploaded Successfully...!!</span><br/>";
	echo "<br/><b>File Name:</b> " . $_FILES["file"]["name"] . "<br>";
	echo "<b>Type:</b> " . $_FILES["file"]["type"] . "<br>";
	echo "<b>Size:</b> " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
	//echo "<b>Temp file:</b> " . $_FILES["file"]["tmp_name"] . "<br>";	
	
	//now unset the session variable
	unset($_SESSION['COMSYS_LpoRefNo']);
	//redirect to manage lpos page
  $url = '../compadm/?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=man_lpos';
		echo'
		<script>
		setTimeout(function(){window.location="'.$url.'";}, 3000); 

		</script>';				
	}else{
		
		echo '<span class="error">There was a problem saving file. Please contact administrator</span><br/>';
	}
}
}
}
else
{
echo "<span class='error'>***Invalid file Size or Type***<span>";
}
}
?>