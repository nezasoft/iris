<?php
//Lets loop through all the sites
$sites = $conn->prepare("SELECT id FROM sites ORDER BY id ASC");
$sites->execute();
$site_rows = $sites->fetchAll(PDO::FETCH_ASSOC);
foreach($site_rows as $site_row){
	$site_id = $site_row['id'];
//calculate total cost for site
$bq = $conn->prepare("SELECT bi.qty, bi.rate,bq.units  FROM boq_items AS bi LEFT JOIN boq AS bq ON bq.id = bi.boq_id WHERE bq.site_id='".$site_id."' ");
$bq->execute();
$bq_rows = $bq->fetchAll(PDO::FETCH_ASSOC);
$total = 0.00;
$unit_estimated_cost =0.00;
foreach($bq_rows as $bq_row){
	$total += ($bq_row['rate']*$bq_row['qty'])*$bq_row['units'];	
	$unit_estimated_cost += $bq_row['rate']*$bq_row['qty'];
}
//update site estimate
$update_site = $conn->prepare("UPDATE sites SET estimated_cost ='".$total."' WHERE id='".$site_id."' LIMIT 1 ");
$update_site->execute();

//update unit estimates
$update_unit = $conn->prepare("UPDATE building SET estimated_cost='".$unit_estimated_cost."' WHERE site_id='".$site_id."'");
$update_unit->execute();
}

//Lets calculate the expenditure for  the period
$order_data = $conn->prepare("SELECT id AS order_id, qty, mat_id, site_id, rate, order_date FROM purchase_order WHERE order_status='C' ORDER BY id DESC");
$order_data->execute();
$order_data_rows = $order_data->fetchAll(PDO::FETCH_ASSOC);
foreach($order_data_rows as $row){
	//total 
	$total = $row['qty']*$row['rate'];
	//check if item is already factored
	$check = $conn->prepare("SELECT id FROM expenditure WHERE order_id='".$row['order_id']."' LIMIT 1");
	$check->execute();
	$check_count = $check->rowCount();
	if($check_count==0){
		//insert data
		$save = $conn->prepare("INSERT INTO expenditure(mat_id,rate,qty,total,order_date,order_id,site_id)VALUES('".$row['mat_id']."','".$row['rate']."','".$row['qty']."','".$total."','".$row['order_date']."','".$row['order_id']."','".$row['site_id']."')");
		$save->execute();				
	}		
}

//lets get the expenditure for each unit
$update_unit_usage = $conn->prepare("SELECT sm.id AS item_id, p.qty, p.rate, sm.building_id FROM site_materials_request_form AS sm LEFT JOIN purchase_order AS p ON p.req_id = sm.id WHERE p.order_status='C'");
$update_unit_usage->execute();
$update_usage_rows = $update_unit_usage->fetchAll(PDO::FETCH_ASSOC);
$total_usage = 0.00;
foreach($update_usage_rows as $row){
$update_usage = $row['qty']*$row['rate'];
$unit_id = $row['building_id'];	
$update_unit = $conn->prepare("UPDATE building SET current_cost='".$update_usage."' WHERE id='".$unit_id."' LIMIT 1");
$update_unit->execute();
	
}
?>