<?php
include('../connect_db/connect_db.php');
?>
<script src="../js/jquery.js"></script>
<h3>Confirm Inward Details</h3><hr/>
    <?php
$qr= mysql_query("select tm.req_no,tm.g_inward_id,tm.g_ref_no,tm.g_date,tm.g_time,tm.delivery_note_no,tm.vehicle_no, tm.g_delivered_by,tm.g_desc,mt.mat_name,pk.pack_name,tm.g_qty, tm.received_by, tm.checked_by,us.user_id, us.fname, us.lname, s.sup_id, s.sup_name, pk.pack_id from temp_inward as tm 
left join materials as mt on mt.mat_id = tm.g_mat_id 
left join suppliers as s on s.sup_id = tm.sup_id
left join users as us on us.user_id = tm.confirmed_by
left join packages as pk on pk.pack_id = tm.pack_id 
where  tm.g_ref_no='".$_SESSION['COMSYS_InwardRefNo']."' ");


?>							<br/><span id="reqresults"></span><br/>         
                        
                                <table class="table table-striped table-bordered table-hover" id="list_p">
                                    <thead>
                                        <tr>
										    <th>Item No</th>
                                            <th>Del No</th>
                                            <th>Veh No</th>
                                            <th>Del By</th>
                                            <th>Material</th>
                                            <th>Description</th>
											<th>Package</th>
                                             <th>Quantity</th>
											<th></th>
											
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									$count = 1;
									while($qr_row=mysql_fetch_assoc($qr)){
									?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $count++; ?></td>
                                          
                                            <td><?php echo $qr_row['delivery_note_no']; ?></td>
                                            <td><?php echo $qr_row['vehicle_no']; ?></td>
                                            <td><?php echo $qr_row['g_delivered_by']; ?></td>
                                            <td><?php echo $qr_row['mat_name']; ?></td>
                                            <td><?php echo $qr_row['g_desc']; ?></td>
											<td><?php echo $qr_row['pack_name']; ?></td>
											<td><?php echo $qr_row['g_qty']; ?></td> 
										   <a href="" id="delreqval_<?php echo $qr_row['g_inward_id'];?>" rel="<?php echo $qr_row['g_inward_id'];?>"></a>
											<td><a target="_blank" class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=inw&act=edit_inw&inw_id=<?php echo $qr_row['g_inward_id'];?>" >Update or Remove</a></td>
										
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                               
                            
                       