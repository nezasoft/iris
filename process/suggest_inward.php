<?php
//Make a connection
include('../connect_db/connect_db.php');
//check if its an ajax request
	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

		$search = str_replace("'","",sanitize_string($_POST['keyword']));
		$stmt = mysql_query("select s.site_name, tm.g_inward_id,tm.in_status,tm.g_ref_no,tm.g_date,tm.g_time,tm.delivery_note_no,tm.vehicle_no,
							tm.g_delivered_by,tm.g_desc,mt.mat_name,pk.pack_name,tm.g_qty,tm.received_by,tm.checked_by,
							con_us.fname as confirm_user
							from goods_inwards as tm 
							left join materials as mt on mt.mat_id = tm.g_mat_id
							left join sites as s on s.site_id = tm.site_id
							left join packages as pk on pk.pack_id = tm.pack_id
							left join users as con_us on con_us.user_id = tm.confirmed_by
							where tm.site_id='".$_SESSION['COMSYS_SiteID']."'  and  (tm.g_ref_no like '%".$search."%' or tm.in_status like '%".$search."%' or tm.g_desc like '%".$search."%' or tm.delivery_note_no like '%".$search."%' or mt.mat_name like '%".$search."%' or tm.g_date like '%".$search."%') group by tm.g_ref_no order by tm.g_inward_id desc limit 30");
		$bold= '<strong><font color="#FF5733">'.$search.'</font></strong>';
		$num_rows = mysql_num_rows($stmt);
		if($num_rows>=1){
		while($row = mysql_fetch_assoc($stmt)){
			echo '<div class="show" align="left">'
			.str_ireplace($search,$bold,$row['g_ref_no']).'--'.str_ireplace($search,$bold,titleCase($row['in_status'])).'--'.str_ireplace($search,$bold,$row['mat_name']).
			'--'.str_ireplace($search,$bold,titleCase($row['delivery_note_no'])).'--'.str_ireplace($search,$bold,$row['g_date']).'<div align="right"><a class="btn btn-xs btn-success" href="?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=view_inw&inw_ref='.$row['g_ref_no'].'" target="_blank"><font color="white"><i class="glyph-icon  icon-expand" title="View Inward"></i> View </font></a></div></div><br/>';		
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