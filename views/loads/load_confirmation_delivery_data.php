<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val = "dc.site_id  like '%%'";
		   }else{
		     $filter_val = "dc.site_id='".$_SESSION['COMSYS_SiteID']."'";
		   }
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=del&act=inc_del&filter='.$val.'#inc_del&';
           }else{
           $val = 30;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=del&act=inc_del&';
           }
			$qr= mysql_query("select  dc.del_con_id from delivery_confirmations as dc 
								left join materials as mt on mt.mat_id=dc.mat_id
								left join packages as pk on pk.pack_id = dc.pack_id
								left join sites as s on s.site_id = dc.site_supply_id
								left join users as us on us.user_id = dc.user_id
								left join sites as st on st.site_id = dc.site_id
								left join confirmation_approvals as ca on ca.confirm_code = dc.confirm_code
								where ".$filter_val." group by dc.confirm_code ");
            $num_rows = mysql_num_rows($qr);//count rows
            //save num rows in session
            $_SESSION['FON_SESS_NUM_ROWS'] = $num_rows;
            //save the url in session
            $_SESSION['FON_SESS_FILTER_URL'] = $url;
			//function to paginate the results
		   function displayPaginationBelow($per_page,$page){
			$page_url=$_SESSION['FON_SESS_FILTER_URL'];//page link
			$total = $_SESSION['FON_SESS_NUM_ROWS'];
			$adjacents = "2";
			$page = ($page == 0 ? 1 : $page);
			$start = ($page - 1) * $per_page;
			$prev = $page - 1;
			$next = $page + 1;
			$setLastpage = ceil($total/$per_page);
			$lpm1 = $setLastpage - 1;
			$setPaginate = "";
			if($setLastpage > 1){
			$setPaginate .= "<ul id='pagination' class='pagination pull-right'>";
			$setPaginate .= "<li class='setPage'>Page $page of $setLastpage</li>";
			if ($setLastpage < 7 + ($adjacents * 2))
			{
			for ($counter = 1; $counter <= $setLastpage; $counter++)
			{
			if ($counter == $page)
			$setPaginate.= "<li><a class='current_page'>$counter</a></li>";
			else
			$setPaginate.= "<li><a OnClick='getdata($counter)' href='javascript:void(0);'>$counter</a></li>";
			}
			}
			elseif($setLastpage > 5 + ($adjacents * 2))
			{
			if($page < 1 + ($adjacents * 2))
			{
			for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
			{
			if ($counter == $page)
			$setPaginate.= "<li><a class='current_page'>$counter</a></li>";
			else
			$setPaginate.= "<li><a  OnClick='getdata($counter)' href='javascript:void(0);'>$counter</a></li>";
			}
			$setPaginate.= "<li class='dot'>...</li>";
			$setPaginate.= "<li><a OnClick='getdata($lpm1)' href='javascript:void(0);'>$lpm1</a></li>";
			$setPaginate.= "<li><a  OnClick='getdata($setLastpage)' href='javascript:void(0);'>$setLastpage</a></li>";
			}
			elseif($setLastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
			{
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata(1)'>1</a></li>";
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata(2)'>2</a></li>";
			$setPaginate.= "<li class='dot'>...</li>";
			for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
			{
			if ($counter == $page)
			$setPaginate.= "<li><a class='current_page'>$counter</a></li>";
			else
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($counter)'>$counter</a></li>";
			}
			$setPaginate.= "<li class='dot'>..</li>";
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($lpm1)'>$lpm1</a></li>";
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($setLastpage)'>$setLastpage</a></li>";
			}
			else
			{
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata(1)'>1</a></li>";
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata(2)'>2</a></li>";
			$setPaginate.= "<li class='dot'>..</li>";
			for ($counter = $setLastpage - (2 + ($adjacents * 2)); $counter <= $setLastpage; $counter++)
			{
			if ($counter == $page)
			$setPaginate.= "<li><a class='current_page'>$counter</a></li>";
			else
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($counter)'>$counter</a></li>";
			}
			}
			}
		
			if ($page < $counter - 1){
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($next)'>Next</a></li>";
			$setPaginate.= "<li><a href='javascript:void(0);' OnClick='getdata($setLastpage)'>Last</a></li>";
			}else{
			$setPaginate.= "<li><a class='current_page'>Next</a></li>";
			$setPaginate.= "<li><a class='current_page'>Last</a></li>";
			}
		
			$setPaginate.= "</ul>\n";
		}
		return $setPaginate;
		}
	       if(isset($_GET['page'])){
            $page  = (int)$_GET['page'];			
            }else{
            $page = 1;
            }
            //echo $filter;
            $setLimit = $val;
            $pageLimit  = ($page * $setLimit) - $setLimit;
			$qr=mysql_query("select dc.date_received, dc.date_entered, st.site_name as siteb, dc.del_con_id, dc.del_no,dc.price, dc.inward_no, dc.details, dc.qty, dc.balance, dc.confirm_code, dc.price, pk.pack_name, s.site_name, mt.mat_name, us.fname, us.lname from delivery_confirmations as dc 
					left join materials as mt on mt.mat_id=dc.mat_id
					left join packages as pk on pk.pack_id = dc.pack_id
					left join sites as s on s.site_id = dc.site_supply_id
					left join users as us on us.user_id = dc.user_id
					left join sites as st on st.site_id = dc.site_id
					left join confirmation_approvals as ca on ca.confirm_code = dc.confirm_code
					where ".$filter_val."
					group by dc.confirm_code limit ".$pageLimit.",".$setLimit." ");
			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>
                              <div class="panel-body">
						<h3><a href="#" onClick ="$('#list_p').tableExport({type:'excel',escape:'false'});" >Export To Excel</a></h3>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_p">
                                    <thead>
                                        <tr>
										    <th>Material</th>
                                            <th>Del No</th>
                                            <th>From(Site)</th>
											<th>To(site)</th>
                                            <th>Inward No</th>
										    <th>Price</th>
										    <th>Quantity</th>
										    <th>Del Date</th>
										    <th>Details</th>
										    <th>Entered By</th>
											<th>Approvals</th>
										   <th>Entry Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									while($qr_row=mysql_fetch_assoc($qr)){
									$count++;
									?>
                                        <tr class="odd gradeX">
                                             <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                            <td><?php echo $qr_row['del_no']; ?></td>
											 <td><?php echo $qr_row['siteb']; ?></td>
                                            <td><?php echo $qr_row['site_name']; ?></td>
											<td><?php echo $qr_row['inward_no']; ?></td>
											<td><?php echo $qr_row['price']; ?></td>
                                             <td><?php echo $qr_row['qty']; ?></td>	
											<td><?php echo $qr_row['date_received']; ?></td>
											<td><?php echo $qr_row['details']; ?></td>	
											<td><?php echo $qr_row['fname'].' '.$qr_row['lname']; ?></td>
																						
											  <script>
											/*When DOM loaded we attach click event to button
											$(document).ready(function() {	
											$('.pop-up_<?php echo $qr_row['del_con_id'];?>').hide();
													//Delete store
												$("#delpack_<?php echo $qr_row['pack_id'];?>").click(function(){												
													$("#packresults").empty();													
													var con = confirm("Are you sure you want to remove this package?");													
													if(con==true){
												//we select the first link 
													//then call the attr method to get back the href value
													var pack_id = $("#delpackval_<?php echo $qr_row['pack_id'];?>").attr("rel");
													
											$.post("../process/delete_package.php",
											 { pack_id : pack_id },
											 function(pack_id) {
											 $("#packresults").html(pack_id);											 
										   });											
												}
														   
												});
												$(function() {
												 var moveRight = -250;
												//var moveDown = 2;
												
												$('a#trigger_<?php echo $qr_row['del_con_id'];?>').hover(function(e) {
												  $('.pop-up_<?php echo $qr_row['del_con_id'];?>').show();
												  //.css('top', e.pageY + moveDown)
												  //.css('left', e.pageX + moveLeft)
												  //.appendTo('body');
												}, function() {
												  $('.pop-up_<?php echo $qr_row['del_con_id'];?>').hide();
												});
												
												$('a#trigger_<?php echo $qr_row['del_con_id'];?>').mousemove(function(e) {
												  $('.pop-up_<?php echo $qr_row['del_con_id'];?>').css('bottom', e.pageY + moveDown).css('right', e.pageX + moveRight);
												});
												
											  });
											});*/
                                           </script>
										   <style type="text/css">
  
											  
											  /* HOVER STYLES 
											  .pop-up_<?php echo $qr_row['del_con_id'];?> {
											    margin-top:200px;
												display: none;
												position: absolute;
												width: 280px;
												padding: 10px;
												background: #eeeeee;
												color: #000000;
												border: 1px solid #1a1a1a;
												font-size: 90%;
											  }*/
											</style>
												
												 <!-- <div id="pop-up_<?php echo $qr_row['del_con_id'];?>" class="pop-up_<?php echo $qr_row['del_con_id'];?>">
													<h3>Approvals</h3>
													<p> -->
													 
												<!--	</p>
												  </div> -->
	
										   <a href="" id="delpackval_<?php //echo $qr_row['pack_id'];?>" rel="<?php echo $qr_row['pack_id'];?>"></a>
											<td><a href="#" id="trigger_<?php //echo $qr_row['del_con_id'];?>"> <?php
													  //get all those who approved the confirmations
													  $qr4 = mysql_query("select   
													  ca.confirm_code, us.fname, us.lname from confirmation_approvals as ca
													left join users as us on us.user_id = ca.con_user_id
													where ca.con_user_id>0 and ca.confirm_code='".$qr_row['confirm_code']."'");
													while($qrrow4=mysql_fetch_assoc($qr4)){
													
													echo '<code>'. $qrrow4['fname'].' '.$qrrow4['lname']. '</code><br/>';
													
													}
													  
													  ?></a></td>
											<td><?php echo $qr_row['date_entered'];?></td>
											
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                            
 <ul style="background-color:transparent; border-color:transparent;" class="pagination pagination-sm m-t-0 m-b-0 pull-right" id="paginated_data">
            <?php  	echo displayPaginationBelow($setLimit,$page);   ?>
  </ul>

	 <?php  
	    }else{
		echo '<div class="alert alert-close alert-danger"><div class="alert-content"></div><font color="red"><i class="glyph-icon icon-check-circle"></i></font> There are currently no records!</div>';

	   }
         ?>
 <br/><br/><br/><br/><br/><br/><br/><br/><div id="rec_found" class="alert alert-success"><font color="green"><i class="glyph-icon icon-check-circle"></i></font>&nbsp;<?php    echo "Displaying <strong>".$count."</strong> records out of total <strong>".$num_rows."</strong> found ";?></div>

<?php
if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
$filter = $_GET['filter']; 
?>
<script>
function getdata(pageno,filter){
//empty response
$("#loader").show();
filter = <?php  echo $filter; ?>;
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter;
	 jQuery.ajax({
                type: "GET", // Post / Get method
                url: "../views/loads/load_confirmation_delivery_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#confirmation_delivery_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>

<?php
}else{
?>
<script>
function getdata(pageno){
//empty response
$("#loader").show();
	// source of data	
	var myData = 'page=' + pageno;
	 jQuery.ajax({
                type: "GET", // Post / Get method
                url: "../views/loads/load_confirmation_delivery_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#confirmation_delivery_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
