<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val = "tdn.to_site_id like '%%'";
		   }else{
		     $filter_val = "tdn.to_site_id='".$_SESSION['COMSYS_SiteID']."'";
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
			$qr= mysql_query("select tdn.delivery_no from delivery_note as tdn left join materials as mt on mt.mat_id = tdn.mat_id 
			left join packages as pk on pk.pack_id = tdn.pack_id 
			left join users as usatn on usatn.user_id = tdn.attn_user_id 
			left join sites as s on s.site_id=tdn.from_site_id 
            left join users as user_from on user_from.user_id = tdn.user_id
            left join sites as site_from on site_from.site_id = user_from.site_id
            where ".$filter_val." group by tdn.delivery_no order by tdn.delivery_id desc ");		
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
			$qr=mysql_query("select site_from.site_name as site_name_to, tdn.delivery_no,tdn.delivery_id,tdn.delivery_status,tdn.del_date,tdn.del_time, tdn.vehicle_no,tdn.taken_by, usatn.fname,usatn.lname,usatn.user_id, s.site_id,s.site_name,pk.pack_id, tdn.delivery_id, tdn.qty, tdn.mat_id,tdn.del_details, mt.mat_name,pk.pack_name from delivery_note as tdn left join materials as mt on mt.mat_id = tdn.mat_id left join packages as pk on pk.pack_id = tdn.pack_id 
			left join users as usatn on usatn.user_id = tdn.attn_user_id 
			left join sites as s on s.site_id=tdn.from_site_id 
            left join users as user_from on user_from.user_id = tdn.user_id
            left join sites as site_from on site_from.site_id = user_from.site_id
            where ".$filter_val." group by tdn.delivery_no order by tdn.delivery_id desc limit ".$pageLimit.",".$setLimit." ");
			$displayed_records=0;
	        $count = 0;
	        if($num_rows>=1){		
             ?>
                              <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_req">
                                    <thead>
                                        <tr>                                        
											<th>Ref No</th>
											<th>Taken By</th>
                                             <th>Vehicle No</th>
                                            <th>From</th>
											<th>To</th>
                                            <th>Status</th>							
                                            <th>Date</th>
                                            <th>Time</th>									
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php								
									while($qr_row=mysql_fetch_assoc($qr)){
									$count++;
									//check status to define color code
									$st = $qr_row['delivery_status'];									
									switch($st){
									case 'New' ;
									$color_code='#00FF00';//lime green
									break;
									case 'Cancelled' ;
									$color_code='#FF0000';//red
									break;
									case 'Approved' ;
									$color_code='#3300FF';//red
									break;
									case 'In-Process' ;
									$color_code='blue';//red
									break;
									case 'Completed' ;
									$color_code='#DF013A';//yellow
									break;									
									}
									?>
                                        <tr class="odd gradeX">
                                           <td>
										   <a href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=del&act=view_del&del_ref=<?php echo $qr_row['delivery_no']; ?>"><?php echo $qr_row['delivery_no']; ?></a>
										   </td>
                                          <td><?php echo $qr_row['taken_by']; ?></td>
										  <td><?php echo $qr_row['vehicle_no']; ?></td>
										  <td><?php echo $qr_row['site_name']; ?></td>
										  <td><?php echo $qr_row['site_name_to']; ?></td>
										  <td><?php echo '<font color="'.$color_code.'">'. $qr_row['delivery_status'].'</font>';?></td>					
                                          <td><?php echo $qr_row['del_date']; ?></td>
                                          <td><?php echo $qr_row['del_time']; ?></td>
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
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
                url: "../views/loads/load_incoming_delivery_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#incoming_delivery_data").html(response);
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
                url: "../views/loads/load_incoming_delivery_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#incoming_delivery_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
