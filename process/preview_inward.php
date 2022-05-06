<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$inward_no = sanitize_string($_POST['inward_no']);
	
	$get_data = $conn->prepare("SELECT g.id AS item_id, g.inward_no,g.qty, m.mat_name, g.inw_date FROM good_inward AS g LEFT JOIN materials AS m ON m.id = g.mat_id WHERE g.inward_no='".$inward_no."' ORDER BY g.id ASC");
	$get_data->execute();
	$get_data_rows = $get_data->fetchAll(PDO::FETCH_ASSOC);
	
?>
<div class="table-responsive">
                <table class="table align-middle table-row-dashed fs-6 gy-5 table-striped" id="list_table_data" >
                    <thead style="background:#0291FA ;color:#fff;font-weight:600;">
                      <tr>
                        <th>#</th>
                        <th>Inward No</th>
				        <th>Item</th>
						<th>Quantity</th>
			           </tr>
                    </thead>
                    <tbody>
               <?php
			   $count = 0;
               foreach($get_data_rows as $row) {
			   $count++;
            ?>
              <tr>  
                  <td><?php echo $count; ?></td>
				  <td><?php echo $row['inward_no']; ?></td>
				  <td><?php echo titleCase($row['mat_name']); ?></td>
				  <td><?php echo $row['qty']; ?></td>
              </tr>   
            <?php
            }
            ?>
            </tbody>			
        </table>
		 </div>	
<?php
}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	