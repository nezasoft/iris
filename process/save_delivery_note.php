<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$title = sanitize_string($_POST['title']);
	$vehicle_no = sanitize_string($_POST['vehicle_no']);
	$collected_by = sanitize_string($_POST['collected_by']);
	$site = sanitize_string($_POST['site']);	
	if($site==$_SESSION['IRIS_SITE_ID']){
		die("<div class='alert alert-danger'> * Site has to be different from your site!</div>");			
	}	
	  $inv_qr = $conn->prepare("SELECT document_value FROM business_doc WHERE doc_code='DN'  ORDER BY id DESC LIMIT 1");
      $inv_qr->execute();
      $row = $inv_qr->fetch(PDO::FETCH_ASSOC);
      $start = $row['document_value'];
      function generate_numbers($start, $count, $digits) {//Lets create a receipt no
         $result = array();
         for ($n = $start; $n < $start + $count; $n++) {       
            $result[] = str_pad($n, $digits, "0", STR_PAD_LEFT);       
         }
         return $result;
      }
      $numbers = generate_numbers($start, 1, 9);   
      $init = 1;
      foreach($numbers as $num){
      $receipt_no = $init.$num;
      //Save in SESSION Variable      
      $_SESSION['IRIS_DN_NO'] = $receipt_no;
      }  
     $receipt_no = $_SESSION['IRIS_DN_NO'];
	 $conn->beginTransaction();
	try{
		 
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM delivery_note WHERE delivery_no='".$receipt_no."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");			 
		 }
		//lets get all the data from temporary table
		$get_data = $conn->prepare("SELECT id AS item_id, ref_no,mat_id,qty,del_details FROM temp_delivery_note AS tr WHERE ref_no='".$_SESSION['IRIS_DEL_REF_NO']."' ORDER BY id ASC");
		$get_data->execute();
		$get_data_rows = $get_data->fetchAll(PDO::FETCH_ASSOC);
		
		foreach($get_data_rows as $row){
		//save data
		 $save = $conn->prepare("INSERT INTO delivery_note(delivery_no,mat_id,qty,del_details,vehicle_no,taken_by,site_id,to_site_id,delivery_name,del_date,del_time,user_id)VALUES('".$receipt_no."','".$row['mat_id']."','".$row['qty']."','".$row['del_details']."','".$vehicle_no."','".$collected_by."','".$_SESSION['IRIS_SITE_ID']."','".$site."','".$title."',curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."')");
		 $save->execute();			
		}
		
		 $log_desc ="Created a new Delivery note. Document no.  <strong>".$receipt_no."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		  $log->execute();
		  $doc_value = $conn->prepare("UPDATE business_doc set document_value = document_value + 1 WHERE doc_code='DN' LIMIT 1");
		  $doc_value->execute();
		  //lets empty the temp table
		  $empty_table = $conn->prepare("DELETE FROM temp_delivery_note WHERE ref_no='".$_SESSION['IRIS_DEL_REF_NO']."'");
		  $empty_table->execute();
		 $conn->commit();
		 echo '<div class="alert alert-success d-flex align-items-center p-5 mb-10">
				<!--begin::Svg Icon | path: icons/duotune/general/gen048.svg-->
				<span class="svg-icon svg-icon-2hx svg-icon-success me-4">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				<path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z" fill="black" />
				<path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z" fill="black" />
				</svg>
				</span>
				<!--end::Svg Icon-->
				<div class="d-flex flex-column">
				<h4 class="mb-1 text-success">Success</h4>
					<span>Delivery Note Saved!</span>
				</div>
			</div>';
		 //reload 
		 echo "<script>$('#form_section').empty();getdata(1);window.setTimeout(function(){
			 $('#ModalContentAddNew').modal('hide');},2000);
			 </script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	