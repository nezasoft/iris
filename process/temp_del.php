<?php
include('../connect_db/connect_db.php');
?>
<script src="../js/jquery.js"></script>
<h3>Confirm Delivery Details</h3>
    <?php
$qr= mysql_query("select tdn.vehicle_no,tdn.taken_by, usatn.fname,usatn.lname,usatn.user_id,s.site_id,s.site_name,pk.pack_id, tdn.delivery_id, tdn.qty, tdn.mat_id,tdn.del_details,mt.mat_name,pk.pack_name from temp_delivery_note as tdn left join materials as mt on mt.mat_id = tdn.mat_id
left join packages as pk on pk.pack_id = tdn.pack_id
left join users as usatn on usatn.user_id = tdn.attn_user_id
left join sites as s on s.site_id=tdn.to_site_id where tdn.delivery_no='".$_SESSION['COMSYS_DelRefNo']."' ");

?>							<br/><span id="reqresults"></span><br/>         
                        
                                <table class="table table-striped table-bordered table-hover" id="list_p">
                                    <thead>
                                        <tr>
										    <th>Item No</th>
                                            <th>Material Name</th>
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
                                            <td><?php echo $qr_row['mat_name']; ?></td>
                                            <td><?php echo $qr_row['del_details']; ?></td>
											<td><?php echo $qr_row['pack_name']; ?></td>
											<td><?php echo $qr_row['qty']; ?></td>  											
										
										   <a href="" id="delreqval_<?php echo $qr_row['delivery_id'];?>" rel="<?php echo $qr_row['delivery_id'];?>"></a>
											<td><a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=del&act=edit_del&del_id=<?php echo $qr_row['delivery_id'];?>" >Update or Remove</a></td>
										
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                               
                            
                       