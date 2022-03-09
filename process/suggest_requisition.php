<?php
//Make a connection
include('../connect_db/connect_db.php');
//check if its an ajax request
	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

		$search = str_replace("'","",sanitize_string($_POST['keyword']));
		$stmt = mysql_query("select rq.req_id, rq.req_ref_no, rq.req_details, rq.req_name, rq.req_status, mt.mat_name, rq.req_date from requisitions as rq left join materials as mt on mt.mat_id = rq.mat_id where rq.site_id='".$_SESSION['COMSYS_SiteID']."'  and  (rq.req_ref_no like '%".$search."%' or rq.req_name like '%".$search."%' or rq.req_details like '%".$search."%' or rq.req_status like '%".$search."%' or mt.mat_name like '%".$search."%' or rq.req_date like '%".$search."%') group by rq.req_ref_no order by rq.req_id desc limit 30");
		$bold= '<strong><font color="#FF5733">'.$search.'</font></strong>';
		$num_rows = mysql_num_rows($stmt);
		if($num_rows>=1){
		while($row = mysql_fetch_assoc($stmt)){
			echo '<div class="show" align="left">'
			.str_ireplace($search,$bold,$row['req_ref_no']).'--'.str_ireplace($search,$bold,titleCase($row['req_name'])).'--'.str_ireplace($search,$bold,$row['mat_name']).
			'--'.str_ireplace($search,$bold,titleCase($row['req_status'])).'--'.str_ireplace($search,$bold,$row['req_date']).'<div align="right"><a class="btn btn-xs btn-success" href="?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=view_req&req_ref='.$row['req_ref_no'].'" target="_blank"><font color="white"><i class="glyph-icon  icon-expand" title="View Requisition"></i> View </font></a></div></div><br/>';		
			}
	        if($num_rows>=30){
				 echo '<div class="show" align="left"><span class="customer_name"><font color="red">* Search limited to 30 records. For a more refined search choose advanced search on the menu</font></span></div>';
		    }			
		}else{
		 echo '<div class="show" align="left"><span class="customer_name"><font color="red">No record found!</font></span></div>';
		}

			
	}else{
			die("<font color='red'>You are not authorized to access this content.</font>");

	}
?>