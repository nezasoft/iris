
<?php
include('../connect_db/connect_db.php');
if(isset($_FILES["file"]["type"]))
{
$validextensions = array("jpg","jpeg","gif","png");
$temporary = explode(".", $_FILES["file"]["name"]);
$file_extension = end($temporary);
if ((($_FILES["file"]["type"] == "image/jpeg") || ($_FILES["file"]["type"] == "image/png")   ) && ($_FILES["file"]["size"] < 5000000)
&& in_array($file_extension, $validextensions)) {
	$file_name = time().'-'.$_FILES['file']['name'];
if ($_FILES["file"]["error"] > 0)
{
echo "Return Code: " . $_FILES["file"]["error"] . "<br/><br/>";
}
else
{
if (file_exists("../product_photos/" . $_FILES["file"]["name"])) {
echo $_FILES["file"]["name"] . " <span id='invalid'><b>already exists.</b></span> ";
}
else
{

$sourcePath = $_FILES['file']['tmp_name']; // Storing source path of the file in a variable
$targetPath = "../product_photos/".$file_name; // Target path where file is to be stored
move_uploaded_file($sourcePath,$targetPath) ; // Moving Uploaded file

//lets get the mat id saved in session

$mat_id = $_SESSION['COMSYS_MatID'];

$save = mysql_query("insert into product_photos(mat_id,file_name)
values('$mat_id','$file_name')");

	if($save){
		
	echo "<span class='success'>Image Uploaded Successfully...!!</span><br/>";
	echo "<br/><b>File Name:</b> " . $_FILES["file"]["name"] . "<br>";
	echo "<b>Type:</b> " . $_FILES["file"]["type"] . "<br>";
	echo "<b>Size:</b> " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
	//echo "<b>Temp file:</b> " . $_FILES["file"]["tmp_name"] . "<br>";	
	
	//now unset the session variable
	unset($_SESSION['COMSYS_LpoRefNo']);
	//redirect to manage lpos page
  $url = $_SESSION['COMSYS_CurrentPageUrl'];
		echo'
		<script>
		setTimeout(function(){window.location="'.$url.'";}, 3000); 

		</script>';				
	}else{
		
		echo '<span class="error">There was a problem uploading file. Please contact administrator'.mysql_error().'</span><br/>';
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