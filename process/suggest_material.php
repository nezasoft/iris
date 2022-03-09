<?php
//Make a connection
include('../connect_db/connect_db.php');
//check if its an ajax request
	if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

		$search = str_replace("'","",sanitize_string($_POST['keyword']));
		$stmt = mysql_query("select pp.file_name, mt.mat_name,mt.mat_id,mt.description,mc.mat_cat_name,sup.sup_name,mn.man_name,br.brand_name,s.size_name from materials as mt 
			        left join materials_categories as mc on mc.mat_cat_id=mt.mat_cat_id
					left join suppliers as sup on sup.sup_id = mt.sup_id
					left join product_photos as pp on pp.mat_id=mt.mat_id
					left  join manufactures as mn on mn.man_id = mt.man_id
					left join brands as br on br.brand_id = mt.brand_id
					left join sizes as s on s.size_id = mt.size_id
					where (mt.mat_name LIKE '%".$search."%' OR sup.sup_name LIKE '%".$search."%' ) order by mt.mat_name asc limit 30");
		$bold= '<strong><font color="#FF5733">'.$search.'</font></strong>';
		$num_rows = mysql_num_rows($stmt);
		if($num_rows>=1){
		while($row = mysql_fetch_assoc($stmt)){
			echo '<div class="show" align="left"> <span class="btn btn-xs btn-blue-alt">'.titleCase(str_ireplace($search,$bold,$row['mat_name'])).'('.str_ireplace($search,$bold,titleCase($row['sup_name'])).')</span></div><br/>';		
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