<?php
include('../connect_db/connect_db.php');
?>
<script src="../js/jquery.js"></script>
<br/><h3>Confirm LPO Details</h3><hr/>
    <?php
$qr= mysql_query("select tlpo.exp_date,tlpo.lpo_id,tlpo.lpo_details,tlpo.lpo_ref_no,tlpo.lpo_date,tlpo.qty,tlpo.price, tlpo.lpo_status,mat.mat_name,pk.pack_name,rq.req_ref_no from temp_lpos as tlpo 
left join materials as mat on mat.mat_id = tlpo.mat_id
left join packages as pk on pk.pack_id = tlpo.pack_id
left join requisitions as rq on rq.req_id = tlpo.req_id where tlpo.lpo_ref_no='".$_SESSION['COMSYS_LpoRefNo']."' ");

?>							<br/><span id="reqresults"></span><br/>         
                        
                                <table class="table table-striped table-bordered table-hover" id="list_p">
                                    <thead>
                                        <tr>
										    <th>Item No</th>
                                            <th>Item</th>
                                            <?php if($_SESSION['COMSYS_IS_MOBILE']!=1){ ?>
                                            <th>Description</th>
                                            <?php } ?>
											<th>Unit</th>
                                             <th>Qty</th>
                                             <th>Rate</th>                 
                                             <th>VAT</th>
                                             <th>Amount</th>
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
                                            <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                            <?php if($_SESSION['COMSYS_IS_MOBILE']!=1){ ?>
                                            <td><?php echo $qr_row['lpo_details']; ?></td>
                                            <?php } ?>
											<td><?php echo $qr_row['pack_name']; ?></td>
											<td><?php echo $qr_row['qty']; ?></td>  											
										      <td><?php echo $qr_row['price']; ?></td>
                                              <td><?php 
											  $rate = $qr_row['price'];
											  $qty = $qr_row['qty'];
											  $vat = 0.16;
											  $total = $rate * $qty;
											  $vat = $total * $vat;
											  $tamt = $vat + $total;
											  
											  echo $vat; ?></td>  
                                               <td><?php echo  $total; ?></td>  
										   <a href="" id="dellpoval_<?php echo $qr_row['lpo_id'];?>" rel="<?php echo $qr_row['lpo_id'];?>"></a>
											<td><a class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=lpos&act=edit_lpo&lpo_id=<?php echo $qr_row['lpo_id'];?>" >Update or Remove</a></td>
										
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                               
                            
                       