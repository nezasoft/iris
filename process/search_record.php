<?php 
include('../connect_db/connect_db.php');

//get the query type

$qt = sanitize_string($_POST['spec']);
//other variables
if(isset($_POST['spec'])){
	
$sdate = sanitize_string($_POST['first_date']);
$ldate =sanitize_string($_POST['last_date']);	
$sup_name = sanitize_string($_POST['sup_name']);

if($sup_name==''){
	$val = '';
}else{
		
	$val='and sl.sup_id='.$sup_name;	
}
}


if($qt=='Rec'){//lets query materials received
$Qr = mysql_query("select pk.pack_name, sp.sup_name,mt.mat_name,sl.qty, sl.log_details,sl.log_date,sl.log_time,st.store_name,us.fname,us.lname from stock_log as sl left join stores as st on st.store_id = sl.store_id
left join users as us on us.user_id = sl.user_id
left join packages as pk on pk.pack_id = sl.pack_id
left join materials as mt on mt.mat_id = sl.mat_id
left join suppliers as sp on sp.sup_id=sl.sup_id
where sl.site_id=".$_SESSION['COMSYS_SiteID']." and (sl.log_date >='$sdate' and sl.log_date<='$ldate') ".$val." ");

$xls_filename = 'received_materials_'.$last_date.'.xls'; // Define Excel (.xls) file name
header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=$xls_filename");
header("Pragma: no-cache");
header("Expires: 0");
/***** Start of Formatting for Excel *****/
// Define separator (defines columns in excel &amp; tabs in word)
$sep = "\t"; // tabbed character

// Start of printing column names as names of MySQL fields
for ($i = 0; $i<mysql_num_fields($query); $i++) {
  echo mysql_field_name($query, $i) . "\t";
}
print("\n");
// End of printing column names
 
// Start while loop to get data
while($row = mysql_fetch_row($query))
{
  $schema_insert = "";
  for($j=0; $j<mysql_num_fields($query); $j++)
  {
    if(!isset($row[$j])) {
      $schema_insert .= "NULL".$sep;
    }
    elseif ($row[$j] != "") {
      $schema_insert .= "$row[$j]".$sep;
    }
    else {
      $schema_insert .= "".$sep;
    }
  }
  $schema_insert = str_replace($sep."$", "", $schema_insert);
  $schema_insert = preg_replace("/\r\n|\n\r|\n|\r/", " ", $schema_insert);
  $schema_insert .= "\t";
  print(trim($schema_insert));
  print "\n";
}
?>
			<div class="panel panel-default" id="print_cont">
                        <div class="panel-heading">
                             <h3>Received Materials</h3>
                        </div>
						<br/><span id="storeresults"></span><br/><br/>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_sites">
                                    <thead>
                                        <tr>
                                            <th>Material</th>
                                            <th>Qty</th>
											<th>Package</th>
                                            <th>Description</th>
                                           <th>Supplier</th>
                                            <th>Date</th>
											<th>Time</th>
											<th>Received By</th>
											<th>Store</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									while($qr_row=mysql_fetch_assoc($Qr)){
									?>
                                        <tr class="odd gradeX">
                                            <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                            <td><?php echo $qr_row['qty']; ?></td>
											 <td><?php echo $qr_row['pack_name']; ?></td>
                                            <td><?php echo $qr_row['log_details']; ?></td>
                                            <td><?php echo $qr_row['sup_name']; ?></td>
                                            <td><?php echo $qr_row['log_date']; ?></td>
                                            <td><?php echo $qr_row['log_time']; ?></td>										
										<td><?php echo titleCase($qr_row['fname'].' '.$qr_row['lname']); ?></td>
                                        <td><?php echo $qr_row['store_name']; ?></td>
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
					<script>
            $(document).ready(function () {
                //$('#list_sites').dataTable();
            });
    </script>
<?php

}elseif($qt=='Issues'){
	
$Qr = mysql_query("select pk.pack_name, mi.request_by, mi.issue_desc, mi.qty,mi.date_issue,mi.time_issue,mt.mat_name,
us.fname,us.lname, app_us.fname as app_fname, app_us.lname as app_lname,st.store_name from materials_issuance as mi 
left join materials as mt on mt.mat_id = mi.mat_id
left join users as us on us.user_id = mi.user_id
left join packages as pk  on pk.pack_id=mi.pack_id
left join users as app_us on app_us.user_id = mi.approve_user_id
left join stores as st on st.store_id = mi.store_id
where (mi.date_issue>='$sdate' and mi.date_issue<='$ldate') and mi.site_id='".$_SESSION['COMSYS_SiteID']."'
");	
?>
			<div class="panel panel-default" id="print_cont">
                        <div class="panel-heading">
                             <h3>Issued Materials</h3>
                        </div>
						<br/><span id="storeresults"></span><br/><br/>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_sites">
                                    <thead>
                                        <tr>
                                            <th>Material</th>   
                                            <th>Qty</th> 
                                             <th>Package</th> 
                                             <th>Details</th>											 
                                            <th>Date Issued</th>
											<th>Time Issued</th>
											<th>Requested By</th>
											<th>Approved By</th>
											<th>Store</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									while($qr_row=mysql_fetch_assoc($Qr)){
									?>
                                        <tr class="odd gradeX">
                                            <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                             <td><?php echo $qr_row['qty']; ?></td>
											  <td><?php echo $qr_row['pack_name']; ?></td>
											  <td><?php echo $qr_row['issue_desc']; ?></td>
                                            <td><?php echo $qr_row['date_issue']; ?></td>
                                            <td><?php echo $qr_row['time_issue']; ?></td>
                                            <td><?php echo $qr_row['request_by']; ?></td>											
										<td><?php echo titleCase($qr_row['app_fname'].' '.$qr_row['app_lname']); ?></td>
                                        <td><?php echo $qr_row['store_name']; ?></td>
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
					<script>
            $(document).ready(function () {
                //$('#list_sites').dataTable();
            });
    </script>
<?php
}else{
	
	echo '<span class="error">* Select Query Type</span>';
}
?>
<div class="signup-form">
<form action="#" method="post">
  <button onclick="printContent('print_cont')">Print Record</button>
</form>
</div>  