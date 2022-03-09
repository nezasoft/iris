<?php
 
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   if(($_SESSION['COMSYS_UserRole']=='CompanyAdmin') || ($_SESSION['COMSYS_UserRole']=='LPOManager')){
		     $filter_val = "st.site_id like '%%'";
		   }else{
		     $filter_val = "st.site_id='".$_SESSION['COMSYS_SiteID']."'";
		   }
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=man_stores&filter='.$val.'#man_stores&';
           }else{
           $val = 30;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=man_stores&';
           }
			$qr= mysql_query("select st.site_id from stores  as st left join sites as site on site.site_id = st.site_id where ".$filter_val." ");
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
			$qr=mysql_query("select st.site_id,st.store_id, st.store_name, st.store_desc, st.store_status, site.site_name from stores  as st 
			                 left join sites as site on site.site_id = st.site_id where ".$filter_val." order by st.store_name limit ".$pageLimit.",".$setLimit." ");
			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>
                             
						<h3><a href="#" onClick ="$('#list_stores').tableExport({type:'excel',escape:'false'});" >Export To Excel</a></h3>
                           <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_stores">
                                    <thead>
                                        <tr>
                                            <th>Store Name</th>
                                            <th>Store Desc</th>
                                            <th>Site </th>
                                            <th>Status</th>
											<th></th>
											<th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									
									while($qr_row=mysql_fetch_assoc($qr)){
									$count++;
									?>
                                        <tr class="odd gradeX">
                                            <td><a class="btn btn-xs btn-success" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=st&act=view_st&st_id=<?php echo $qr_row['store_id']; ?>"><?php echo titleCase($qr_row['store_name']); ?></a></td>
                                            <td><?php echo titleCase($qr_row['store_desc']); ?></td>
                                            <td><?php echo titleCase($qr_row['site_name']); ?></td>
                                            <td><?php echo $qr_row['store_status']; ?></td>
											  <script>
											   //When DOM loaded we attach click event to button
											  $(document).ready(function() {	
											   //Delete store
												$("#delstore_<?php echo $qr_row['store_id'];?>").click(function(){												
												$("#storeresults").empty();													
												var con = confirm("Are you sure you want to remove this store?");													
												if(con==true){
												//we select the first link 
												//then call the attr method to get back the href value
												var store_id = $("#delstoreval_<?php echo $qr_row['store_id'];?>").attr("rel");												
											    $.post("../process/delete_store.php",
											    { store_id : store_id  },
											    function(store_id) {
											     $("#storeresults").html(store_id);											 
										        });											
												}														   
												});
												//Deactivate store
												$("#deactivate_<?php echo $qr_row['store_id'];?>").click(function(){												
													$("#storeresults").empty();													
													var con = confirm("Are you sure you want to deactivate this store?");													
													if(con==true){
												//we select the first link 
												//then call the attr method to get back the href value
											var store_id = $("#delstoreval_<?php echo $qr_row['store_id'];?>").attr("rel");												
											$.post("../process/deactivate_store.php",
											 { store_id : store_id  },
											 function(store_id) {
											 $("#storeresults").html(store_id);											 
										   });											
												}
														   
												});
												//Reactivate Store
													$("#reactivate_<?php echo $qr_row['store_id'];?>").click(function(){												
													$("#storeresults").empty();													
													var con = confirm("Are you sure you want to reactivate this store?");													
													if(con==true){
												//we select the first link 
													//then call the attr method to get back the href value
													var store_id = $("#delstoreval_<?php echo $qr_row['store_id'];?>").attr("rel");												
											$.post("../process/reactivate_store.php",
											 { store_id : store_id  },
											 function(store_id) {
											 $("#storeresults").html(store_id);											 
										   });											
												}
														   
												});
												
											});
                                           </script>
										   <a href="" id="delstoreval_<?php echo $qr_row['store_id'];?>" rel="<?php echo $qr_row['store_id'];?>"></a>
											<td><a class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&sec=st&act=edit_store&store_id=<?php echo $qr_row['store_id']; ?>">Edit</a></td>
											<td>
											 <a class="btn btn-xs btn-danger" href="#" id="delstore_<?php echo $qr_row['store_id'];?>">Delete</a>
											 <?php if($qr_row['store_status']=='Active'){ ?>
											<a class="btn btn-xs btn-warning" href="#" id="deactivate_<?php echo $qr_row['store_id'];?>">Deactivate</a>
											
											<?php }else{?>
											<a class="btn btn-xs btn-success" href="#" id="reactivate_<?php echo $qr_row['store_id'];?>">Reactivate</a></td>
											
											<?php } ?>
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
                url: "../views/loads/load_store_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#store_data").html(response);
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
                url: "../views/loads/load_store_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#store_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
