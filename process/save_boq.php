<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$boq_name = sanitize_string($_POST['boq_name']);
	$site = sanitize_string($_POST['site']);
	$no_units = sanitize_string($_POST['no_units']);	
	  $inv_qr = $conn->prepare("SELECT document_value FROM business_doc WHERE doc_code='BQ'  ORDER BY id DESC LIMIT 1");
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
      $boq_no = $init.$num;
      //Save in SESSION Variable      
      $_SESSION['IRIS_BOQ_NO'] = $boq_no;
      }  
     $boq_no = $_SESSION['IRIS_BOQ_NO'];
	 $conn->beginTransaction();
	try{
		 
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM boq WHERE boq_no='".$boq_no."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");			 
		 }
		//lets get all the data from temporary table
		$get_data = $conn->prepare("SELECT id AS item_id, ref_no,item_id,rate,qty,remark, work_id FROM boq_temp  AS tr WHERE ref_no='".$_SESSION['IRIS_BQ_REF_NO']."' ORDER BY id ASC");
		$get_data->execute();
		$data_count = $get_data->rowCount();
		if($data_count==0){
			 die("<div classs='alert alert-danger'>* No items. Please add item(s) to save</div>");
			
		}
		$get_data_rows = $get_data->fetchAll(PDO::FETCH_ASSOC);
		//Save BOQ
		$save = $conn->prepare("INSERT INTO boq(boq_no,user_id,boq_name,boq_date,boq_time,site_id,units)VALUES('".$boq_no."','".$_SESSION['IRIS_USER_ID']."','".$boq_name."',curdate(),curtime(),'".$site."','".$no_units."')");
		$save->execute();
		//get BOQ id
		$get_id = $conn->prepare("SELECT id FROM boq WHERE boq_no='".$boq_no."' AND user_id='".$_SESSION['IRIS_USER_ID']."' LIMIT 1");
		$get_id->execute();
		$get_id_row = $get_id->fetch(PDO::FETCH_ASSOC);
		
		$boq_id = $get_id_row['id'];
		
		foreach($get_data_rows as $row){
		//save data
		 $save = $conn->prepare("INSERT INTO boq_items(boq_id, item_id,qty,rate,remark,work_id)VALUES('".$boq_id."','".$row['item_id']."','".$row['qty']."','".$row['rate']."','".$row['remark']."','".$row['work_id']."')");
		 $save->execute();			
		}
		
		 $log_desc ="Created a new BOQ. Document no.  <strong>".$boq_no."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		  $log->execute();
		  $doc_value = $conn->prepare("UPDATE business_doc set document_value = document_value + 1 WHERE doc_code='BQ' LIMIT 1");
		  $doc_value->execute();
		  //lets empty the temp table
		  $empty_table = $conn->prepare("DELETE FROM boq_temp WHERE ref_no='".$_SESSION['IRIS_BQ_REF_NO']."'");
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
					<span>BOQ Generated!</span>
				</div>
			</div>';
		 //reload user reports
		echo "<script>$('#form_section').empty();getdata(1);window.setTimeout(function(){
			 $('#ModalContentAddNewBOQ').modal('hide');},2000);
			 </script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	