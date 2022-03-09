<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
		   $store= sanitize_string($_GET['store']);
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
           $val = sanitize_string($_GET['filter']);		   
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=view_st&st_id='.$store.'&filter='.$val.'#list_stores&';
           }else{
           $val = 30;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=view_st&st_id='.$store.'#list_stores';
           }
			$qr= mysql_query("select mt.mat_id from materials_stock as ms 
			left join stores as st on st.store_id = ms.store_id
			left join materials as mt on mt.mat_id = ms.mat_id
			left join packages as pk on pk.pack_id = ms.pack_id
			where ms.store_id='$store'");
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
			$qr=mysql_query("select ms.stock_desc,ms.min_stock_level,ms.max_stock_level,ms.quantity,ms.add_date,ms.add_time,mt.mat_name,pk.pack_name from materials_stock as ms 
			left join stores as st on st.store_id = ms.store_id
			left join materials as mt on mt.mat_id = ms.mat_id
			left join packages as pk on pk.pack_id = ms.pack_id
			where ms.store_id='$store' order by mt.mat_name limit ".$pageLimit.",".$setLimit." ");
			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>
                              <div class="panel-body">
						<h3><a href="#" onClick ="$('#list_stores').tableExport({type:'excel',escape:'false'});" >Export To Excel</a></h3>
                           <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="list_materials">
                                    <thead>
                                        <tr>
                                            <th>Material Name</th>
                                            <th>Package</th>
											<th>In-Stock</th>
                                            <th>Max Stock</th>
                                            <th>Min Stock</th>
                                             <th>Status</th>
                                            <th>Desc</th>
                                            <th>Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<?php
									$count =0;
									while($qr_row=mysql_fetch_assoc($qr)){
									$count++;
									?>
                                        <tr class="odd gradeX">
                                         
                                        <td><?php echo titleCase($qr_row['mat_name']); ?></td>
                                       <td><?php echo $qr_row['pack_name']; ?></td>
							           <td><?php echo $qr_row['quantity']; ?></td>
                                       <td><?php echo $qr_row['max_stock_level']; ?></td>
                                       <td><?php echo $qr_row['min_stock_level']; ?></td>
                                       
                                       <td><?php 
                                       $stock = $qr_row['quantity']; 
                                       $min_stock = $qr_row['min_stock_level'];
                                        $max_stock = $qr_row['max_stock_level'];
                                       if($stock > $min_stock){
                                       echo '<font color="green">In Stock</font>';
                                       }elseif($stock==0){
                                       echo '<font color="red">Out of Stock</font>';
                                       }elseif($stock<$min_stock){
                                       echo '<font color="orange">Low Stock</font>';
                                        }elseif($stock>$max_stock){
                                       echo '<font color="blue">Excess Stock</font>';
                                        
                                       }
                                         ?></td>
                                       <td><?php echo titleCase($qr_row['stock_desc']); ?></td>
                                       <td><?php echo $qr_row['add_date']; ?></td>
                                        </tr>
								 <?php
								 }
								 ?>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
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
store = <?php echo $store; ?> ;
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter + '&store=' + store;
	 jQuery.ajax({
                type: "GET", // Post / Get method
                url: "../views/loads/load_stock_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#stock_data").html(response);
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
store = <?php echo $store; ?> ;
	// source of data	
	var myData = 'page=' + pageno + '&store=' + store;
	 jQuery.ajax({
                type: "GET", // Post / Get method
                url: "../views/loads/load_stock_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#stock_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
