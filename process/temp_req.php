<?php
include('../connect_db/connect_db.php');
?>
<script src="../js/jquery.js"></script>
<h3>Confirm Requisition Details</h3><hr/>
    <?php
$qr= mysql_query("select tr.req_id,tr.qty,tr.req_details,tr.req_details,tr.req_ref_no,tr.req_name,mt.mat_name,pk.pack_name from temp_requisitions as tr left join materials as mt on mt.mat_id = tr.mat_id
left join packages as pk on pk.pack_id = tr.pack_id where req_ref_no='".$_SESSION['COMSYS_ReqRefNo']."' ");

?>							<br/><span id="reqresults"></span><br/>         
                        
                                <table class="table table-striped table-bordered table-hover" id="list_p">
                                    <thead>
                                        <tr>
										    <th>Item No</th>
                                            <th>Material Name</th>
                                            <?php if($_SESSION['COMSYS_IS_MOBILE']!=1){ ?>
                                            <th>Description</th>
											<th>Package</th>
											<?php } ?>
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
                                            <?php if($_SESSION['COMSYS_IS_MOBILE']!=1){ ?>
                                            <td><?php echo $qr_row['req_details']; ?></td>
											<td><?php echo $qr_row['pack_name']; ?></td>
											<?php } ?>
											<td><?php echo $qr_row['qty']; ?></td>  											
										
										   <a href="" id="delreqval_<?php echo $qr_row['req_id'];?>" rel="<?php echo $qr_row['req_id'];?>"></a>
											<td><a class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=req&act=edit_req&req_id=<?php echo $qr_row['req_id'];?>" >Update or Remove</a></td>
										
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                               
                            
                       