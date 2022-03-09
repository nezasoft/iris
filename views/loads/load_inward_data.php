<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val = "tm.site_id like '%%'";
		   }else{
		     $filter_val = "tm.site_id='".$_SESSION['COMSYS_SiteID']."'";
		   }
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){	
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=man_inw&filter='.$val.'#man_inw&';
           }else{
           $val = 5;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=man_inw&';
           }
			$qr= mysql_query("select tm.g_inward_id from goods_inwards as tm 
							left join materials as mt on mt.mat_id = tm.g_mat_id
							left join sites as s on s.site_id = tm.site_id
							left join packages as pk on pk.pack_id = tm.pack_id
							left join users as con_us on con_us.user_id = tm.confirmed_by
							where  ".$filter_val." group by tm.g_ref_no ");
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
			$qr=mysql_query("select s.site_name, tm.g_inward_id,tm.in_status,tm.g_ref_no,tm.g_date,tm.g_time,tm.delivery_note_no,tm.vehicle_no,
							tm.g_delivered_by,tm.g_desc,mt.mat_name,pk.pack_name,tm.g_qty,tm.received_by,tm.checked_by,
							con_us.fname as confirm_user
							from goods_inwards as tm 
							left join materials as mt on mt.mat_id = tm.g_mat_id
							left join sites as s on s.site_id = tm.site_id
							left join packages as pk on pk.pack_id = tm.pack_id
							left join users as con_us on con_us.user_id = tm.confirmed_by
							where  ".$filter_val." group by tm.g_ref_no order by tm.g_inward_id desc limit ".$pageLimit.",".$setLimit." ");
			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>  
                               <div class="panel-body">
                               <div class="table-responsive">
                               <table class="table table-striped table-bordered table-hover" id="list_inw">
                                    <thead>
                                        <tr>
                                            <th>Ref No</th>
											<th>Del No</th>
                                            <th>Veh No</th>
											<th>Del By</th>
											<th>Desc</th>
											<th>Qty</th>
											<th>Checked By</th>
											<th>Received By</th>
											<th>To be approved by</th>
											<th>Status</th>
											<th>Site</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th></th>
									
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
								
									while($qr_row=mysql_fetch_assoc($qr)){
									//check status to define color code
									$st = $qr_row['in_status'];
									
									switch($st){
									case 'New' ;
									$color_code='#00FF00';//lime green
									break;
									case 'Checked' ;
									$color_code='#FF0000';//red
									break;
									case 'Approved' ;
									$color_code='#3300FF';//red
									break;
									case 'Completed' ;
									$color_code='#FFFF00';//yellow
									break;
									
									}
									?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $qr_row['g_ref_no']; ?></td>
                                            <td><?php echo $qr_row['delivery_note_no']; ?></td>
											<td><?php echo $qr_row['vehicle_no']; ?></td>
											<td><?php echo $qr_row['g_delivered_by']; ?></td>
											<td><?php echo $qr_row['g_desc']; ?></td>
											<td><?php echo $qr_row['g_qty']; ?></td>
											<td><?php echo $qr_row['checked_by']; ?></td>
											<td><?php echo $qr_row['received_by']; ?></td>
											<td><?php echo $qr_row['confirm_user']; ?></td>
											 <td><?php echo '<font color="'.$color_code.'">'. $qr_row['in_status'].'</font>'; ?></td>
											 <td><?php echo $qr_row['site_name']; ?></td>
                                            <td><?php echo $qr_row['g_date']; ?></td>
                                            <td><?php echo $qr_row['g_time']; ?> </td>
											<td>

											  <a class="btn btn-xs btn-success" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>
											&sec=inw&act=view_inw&inw_ref=<?php echo $qr_row['g_ref_no']; ?>">View</a>
											</td>
								
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
                url: "../views/loads/load_inward_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#inward_data").html(response);
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
                url: "../views/loads/load_inward_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#inward_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
