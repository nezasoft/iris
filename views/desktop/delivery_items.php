<?php
ini_set("display_errors",true);
/**
 * @author Walter Omedo - Add  Delivery Item
 * @7th Aug 2018
 */
//Make a connection
include('../../connect_db/connect_db.php');

?>
<h3>Delivery Items</h3><hr/>
<?php
//Get Delivery details
$qr= mysql_query("select tdn.vehicle_no,tdn.taken_by, usatn.fname,usatn.lname,usatn.user_id,s.site_id,s.site_name,pk.pack_id, tdn.delivery_id, tdn.qty, tdn.mat_id,tdn.del_details,mt.mat_name,pk.pack_name from temp_delivery_note as tdn left join materials as mt on mt.mat_id = tdn.mat_id
left join packages as pk on pk.pack_id = tdn.pack_id
left join users as usatn on usatn.user_id = tdn.attn_user_id
left join sites as s on s.site_id=tdn.to_site_id where tdn.delivery_no='".$_SESSION['COMSYS_DelRefNo']."' ");
$count = mysql_num_rows($qr);
if($count<=0){
echo "<div class='alert alert-danger'>No item posted yet!</div>";
}else{

?>
<table class="table table-striped table-bordered table-hover" id="delivery_items">
                                    <thead>
                                        <tr>
										    <th>Item No</th>
                                            <th>Material Name</th>
                                            <th>Description</th>
											<th>Package</th>
                                            <th>Quantity</th>
                                            <th>Site Name</th>											
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									$count = 1;
									while($qr_row=mysql_fetch_assoc($qr)){
									?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $qr_row['delivery_id']; ?></td>
                                            <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                            <td><?php echo $qr_row['del_details']; ?></td>
											<td><?php echo $qr_row['pack_name']; ?></td>
											<td><?php echo $qr_row['qty']; ?></td> 
                                            <td><?php echo $qr_row['site_name']; ?></td> 																					
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                               
  <script>
  $('#delivery_items').Tabledit({
    //Delete PO Item
    url: '../process/update_delivery_details.php', editButton: true, removeButton: true, columns: {
        identifier: [0, 'id'], editable: [ [2, 'Description'], [4, 'Qty']]
    }
    , buttons: {
        edit: {
            class: 'btn btn-sm btn-default', html: '<span class="glyph-icon icon-pencil-square-o"></span>Edit', action: 'edit'
        }
        , delete: {
            class: 'btn btn-sm btn-default', html: '<span class="glyph-icon  icon-trash"></span>Delete', action: 'delete'
        }
        , save: {
            class: 'btn btn-sm btn-success', html: 'Save'
        }
        , 
        confirm: {
            class: 'btn btn-sm btn-danger', html: 'Confirm'
        }
    }
    , onDraw: function() {
        return;
    }
    , onSuccess: function() {
        return;
    }
    , onFail: function() {
        return;
    }
    , onAlways: function() {
        return;
    }
    , onAjax: function() {
        return;
    }
}

);
</script>

	<div id="CompleteTrans">
	<a href="#" id="del_ref_no" rel="<?php echo $_SESSION['COMSYS_DelRefNo']; ?>"></a>
	<button class="btn btn-success" id="send_del_f">Send Delivery </button> <!--| <a class="btn btn-xs btn-danger" href="" id="clear_data">Clear Data </a> -->
	<span class="loader2" id="loader"><img src="../images/loader.gif" width="40px" height="40px"/>Sending, Please wait...</span><br/>
    <div id="response2"></div>
	</div>
             <script>
					//When DOM loaded we attach click event to button
					$(document).ready(function(){	
						$('.loader2').hide();					
					   //send requisition
						$("#send_del_f").click(function(){					
						$('.loader2').fadeIn();
						var del_no_send = $("#del_ref_no").attr("rel");					
					    $("#response2").empty();
					    var con = confirm("Submit Delivery?");
						 if(con==true){
						 $.post("../process/send_delivery.php",
							{ del_no_send: del_no_send},
							function(inward_no_send) {
							$("#response2").html(del_no_send);
							$('.loader2').hide();
							$('#TransDiv').hide();
							$("#CompleteTrans").fadeIn();
							$("#display_table").hide();
							$("#response_form").css("height","300px");
							$("#response_message").show();
							$("#display_form").hide();
							//$('.complete_reg').hide();
							 });
						 }else{
						 	$('.loader2').hide();						 
						 }						
						 });					
					});
				</script>
<?php
}
?>
