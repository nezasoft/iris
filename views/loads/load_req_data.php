<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val = "rq.site_id like '%%'";
		   }else{
		     $filter_val = "rq.site_id='".$_SESSION['COMSYS_SiteID']."'";
		   }
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){		
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req&filter='.$val.'#man_req&';
           }else{
           $val = 30;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=man_req&';
           }
			$qr= mysql_query("select rq.req_id from requisitions as rq left join sites as st on st.site_id = rq.site_id where ".$filter_val." group by req_ref_no order by req_id  desc");
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
			$qr=mysql_query("select rq.req_id, rq.req_ref_no, rq.qty,rq.req_details, rq.req_date, rq.req_time, rq.req_name, rq.file_name, rq.req_status, rq.lpo_status, rq.lpo_file_name,
st.site_name from requisitions as rq left join sites as st on st.site_id = rq.site_id where ".$filter_val." group by req_ref_no order by req_id desc limit ".$pageLimit.",".$setLimit." ");

			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>
                                <div class="panel-body">
                               <div class="table-responsive">
                                <table class="table table-striped  table-hover" >
                                    <thead>
                                        <tr>
											<th>Ref No</th>
											<th>Req Title</th>
                                            <th>Status</th>
                                            <th>Date</th>
                                            <th>Time</th>
											<th>Site</th>
                                            <th></th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									while($qr_row=mysql_fetch_assoc($qr)){
									  $count++;
									//check status to define color code
									$st = $qr_row['req_status'];
									switch($st){
									case 'New' ;
									$color_code='#ECD01E';//Yellow/Brown
									break;
									case 'Cancelled' ;
									$color_code='#FF0000';//red
									break;
									case 'Rejected' ;
									$color_code='#FF0000';//red
									break;
									case 'Approved' ;
									$color_code='#3300FF';//red
									break;
									case 'Completed' ;
									$color_code='#0AB53B';//Green
									break;
									case 'LPO Raised' ;
									$color_code='#14B8F5';//Ocean Blue
									break;

									}
									?>
                                        <tr class="odd gradeX">
                                           <td><?php echo $qr_row['req_ref_no']; ?></td>
                                            <td><?php echo $qr_row['req_name']; ?></td>
											<td><?php echo '<font color="'.$color_code.'">'. $qr_row['req_status'].'</font>';
											if($st=='Approved'){?>
											<?php if($_SESSION['COMSYS_IS_MOBILE']!=1){ ?>
											<a class="btn btn-xs btn-success" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=req&act=view_req&req_ref=<?php echo $qr_row['req_ref_no']; ?>">Generate LPO</a>
											<?php } ?>
											<?php } ?>
											</td>
										  
                                            <td><?php echo $qr_row['req_date']; ?></td>
                                            <td><?php echo $qr_row['req_time']; ?></td>
                                           <td><?php echo $qr_row['site_name']; ?></td>
                                             <td>
                                             <?php if($st=='New' || $_SESSION['COMSYS_UserRole']=='CompanyAdmin'){?>
                                             <a class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=req&act=edit_final_req&req_id=<?php echo $qr_row['req_id']; ?>">Edit</a> 
                                             <?php } ?>
                                             <a class="btn btn-xs btn-success" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=req&act=view_req&req_ref=<?php echo $qr_row['req_ref_no']; ?>">View</a> 
                                             <?php  if($qr_row['file_name']==''){?>
                                             <a class="btn btn-xs btn-info" id="show_upload_file_<?php echo $qr_row['req_id']; ?>" href="#">Upload File</a>
                                            <script>	
                                        	$(document).ready(function(){
                                        	    $("#show_upload_file_<?php echo $qr_row['req_id']; ?>").click(function(){
                                        		$("#lpo_upload_modal_<?php echo $qr_row['req_id']; ?>").modal('show');
                                        	    });
                                        	    $("#close_modal_<?php echo $qr_row['req_id']; ?>").click(function(){
                                        	       $("#lpo_upload_modal_<?php echo $qr_row['req_id']; ?>").modal('hide'); 
                                        	    });
                                        	    $(".loader-icon").hide();
                                                $('#upload_save_<?php echo $qr_row['req_id']; ?>').on('click', function() {
                                                $(".response_<?php echo $qr_row['req_id']; ?>").empty();    
												    var ref_no = "<?php echo $qr_row['req_ref_no']; ?>";
                                                    var file_data = $('#upload_lpo_file_<?php echo $qr_row['req_id']; ?>').prop('files')[0];   
                                                    var form_data = new FormData();                  
                                                    form_data.append('file', file_data);                          
                                                    $.ajax({
                                                        url: '../process/upload_req_file.php?ref_no='+ref_no+'', // point to server-side PHP script 
                                                        dataType: 'text',  // what to expect back from the PHP script, if anything
                                                        cache: false,
                                                        contentType: false,
                                                        processData: false,
                                                        data: form_data,                         
                                                        type: 'post',
                                                        success: function(response){
                                                         $(".response_<?php echo $qr_row['req_id']; ?>").append(response);
                                                        }
                                                     });
                                                });
                                        	});
                                            </script> 
                                            
                                            <div class="modal fade" id="lpo_upload_modal_<?php echo $qr_row['req_id']; ?>" aria-hidden="true" data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                          <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    <h4 >Upload Support Document </h4> 
                                                    </div>
                                                    <div class="modal-body">
                                                   
                                                    <table width="100%" border="0">
                                                      <tr>
                                                        <td>Select File:  <input type="file" name="file" id="upload_lpo_file_<?php echo $qr_row['req_id']; ?>"></td>
                                                        <td><div align="left"></div><button  id="upload_save_<?php echo $qr_row['req_id']; ?>" class="btn btn-success">Upload <i class="glyph-icon icon-cloud-upload mrg10R"></i></button></div> </td>
                                                      </tr>
                                                     </table>
                                                       <span class="loader-icon"><img width="40" height="40" src="../images/loader.gif"/>Uploading...</span><hr/>
                                                       <div class="response_<?php echo $qr_row['req_id']; ?>"></div>
                                                        <a class="btn btn-xs btn-danger" id="close_modal_<?php echo $qr_row['req_id']; ?>" href="#">Close</a> 
                                                    </div>
                                                </div>
                                            </div>
                                         </div>
                                          <?php }else{ ?>
                                            <a class="btn btn-xs btn-danger" target="_blank" href="../req_files/<?php echo $qr_row['file_name']; ?>">View File</a>
                                            <?php } ?>
                                         
                                         
                                             </td>
                                           
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                         </div>                            
                     </div>
 <ul class="pagination pagination-sm m-t-0 m-b-0 pull-right" id="paginated_data">
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
                url: "../views/loads/load_req_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#req_data").html(response);
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
                url: "../views/loads/load_req_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#req_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
