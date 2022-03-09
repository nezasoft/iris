<?php
//Make a connection
include('../connect_db/connect_db.php');
//check if its an ajax request
	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
         if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val= "where ms.site_id like '%%'";
		   }else{
		     $filter_val = "where ms.site_id='".$_SESSION['COMSYS_SiteID']."'";
		   }
		$search = str_replace("'","",sanitize_string($_POST['keyword']));
		$store = sanitize_string($_POST['store']);
		$stmt = mysql_query("select ms.stock_desc,ms.min_stock_level,ms.max_stock_level,ms.quantity,ms.add_date,ms.add_time,site.site_name,mt.mat_name,pk.pack_name, st.store_name from materials_stock as ms 
							left join stores as st on st.store_id = ms.store_id
							left join materials as mt on mt.mat_id = ms.mat_id
							left join packages as pk on pk.pack_id = ms.pack_id
							left join sites as site on site.site_id = ms.site_id
							".$filter_val."  AND st.store_id='".$store."'  AND (ms.stock_desc LIKE '%".$search."%' OR mt.mat_name LIKE '%".$search."%' ) order by mt.mat_name asc limit 30");
		$bold= '<strong><font color="#FF5733">'.$search.'</font></strong>';
		$num_rows = mysql_num_rows($stmt);
		if($num_rows>=1){
		while($row = mysql_fetch_assoc($stmt)){
			echo '<div class="show" align="left"> <span class="btn btn-xs btn-blue-alt">Item Name: '
			.titleCase(str_ireplace($search,$bold,$row['mat_name'])).'--Stock: '.str_ireplace($search,$bold,titleCase($row['quantity'])).'--Site: '.str_ireplace($search,$bold,$row['site_name']).'</span></div><br/>';		
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