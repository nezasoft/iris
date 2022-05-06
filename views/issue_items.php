<?php
//Make a connection
include("../connection/connect.php");
include_once("../modules/permissions.php");
$order_no = sanitize_string($_GET['req_no']);

//Get Requisition details details
$get_req = $conn->prepare("SELECT mt.id AS mat_id, req.id AS item_id,req.order_no,req.req_date,req.req_time,req.req_status, bs.section_name, w.work_unit_name, sb.sub_section_name, req.qty,req.order_no, req.req_desc,mt.mat_name, b.building_name, w.work_unit_name FROM materials_request_form AS req LEFT JOIN materials AS mt ON mt.id = req.mat_id LEFT JOIN work_unit  AS w ON w.id = req.work_id LEFT JOIN sub_section AS sb ON sb.id = w.sub_section_id LEFT JOIN building_sections AS bs ON bs.id = sb.section_id  LEFT JOIN building AS b ON b.id = req.building_id WHERE req.order_no='".$order_no."' ORDER BY req.id ASC");
$get_req->execute();
$count = $get_req->rowCount();
if($count<=0){
echo "<div class='alert alert-danger'>No item posted yet!</div>";
}else{
$req_rows=$get_req->fetchAll(PDO::FETCH_ASSOC);
?>
<div class="table-responsive">
<table width="100%" class="table table-row-bordered table-striped table-row-gray-100 align-middle gs-0 gy-3"  id="rq_items">
<thead style="background:#0291FA ;color:#fff;font-weight:600;">
  <tr>
    <th>#</th>
    <th>Item/Product</th>
    <th>Qty</th>
	<th>Building</th>
	<th>Section</th>
	<th>Sub Section</th>
	<th>Work Unit</th>
    <th>Remarks</th>
	<th>Action</th>

  </tr>
  </thead>
  <?php
  foreach($req_rows as $req_row){
  ?>
  <tr>
    <td><?php echo $req_row['item_id']; ?></td>
    <td><?php echo titleCase($req_row['mat_name']); ?></td>
    <td><?php echo $req_row['qty']; ?></td>
    <td><?php echo $req_row['building_name']; ?></td>
	<td><?php echo titleCase($req_row['section_name']); ?></td>
	<td><?php echo titleCase($req_row['sub_section_name']); ?></td>
	<td><?php echo $req_row['work_unit_name']; ?></td>
    <td><?php echo $req_row['req_desc']; ?></td>
	<td><button class="btn btn-small btn-xs btn-info"  onclick="issueItem(<?php echo $req_row['item_id'].",".$req_row['mat_id'].",".$req_row['qty']; ?>)"> Issue</button>
	<span id="issue_item_<?php echo $req_row['item_id']; ?>"></span>
	<span class="loader_<?php echo $req_row['item_id']; ?>"><img src="images/loader.gif" width="30px" height="30px"/></span>
	<span id="response_<?php echo $req_row['item_id']; ?>"></span>
	<script>
	$(document).ready(function(){
		$(".loader_<?php echo $req_row['item_id']; ?>").hide();
		
	});
	
	</script>
	</td>
  </tr>
  
  <?php
  }
  
  ?>

</table>
</div>

<?php
}
?>
