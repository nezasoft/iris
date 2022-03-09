<?php
//Make a connection
include('../../connect_db/connect_db.php');
           //check if user want all records or has wants a filtered result set
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){		
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
	
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=settings&act=man_mat&ip=view_mat&filter='.$val.'#man_req&';
           }else{
           $val = 50;
           $filter = '';
           $url = '?acc_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=settings&act=man_mat&ip=view_mat&';
           }
				$qr= mysql_query("select mt.mat_id from materials as mt left join materials_categories as mc on mc.mat_cat_id=mt.mat_cat_id
				left join suppliers as sup on sup.sup_id = mt.sup_id
				left join product_photos as pp on pp.mat_id=mt.mat_id
				left join manufactures as mn on mn.man_id = mt.man_id
				left join brands as br on br.brand_id = mt.brand_id
				left join sizes as s on s.size_id = mt.size_id
				group by mt.mat_id");
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
			$qr=mysql_query("select pp.file_name, mt.mat_name,mt.mat_id,mt.description,mc.mat_cat_name,sup.sup_name,mn.man_name,br.brand_name,s.size_name from materials as mt 
			        left join materials_categories as mc on mc.mat_cat_id=mt.mat_cat_id
					left join suppliers as sup on sup.sup_id = mt.sup_id
					left join product_photos as pp on pp.mat_id=mt.mat_id
					left  join manufactures as mn on mn.man_id = mt.man_id
					left join brands as br on br.brand_id = mt.brand_id
					left join sizes as s on s.size_id = mt.size_id
					group by mt.mat_id order by mt.mat_name asc limit ".$pageLimit.",".$setLimit." ");

			$displayed_records=0;
	        $count = 0;
	      if($num_rows>=1){
		
             ?>
                                <div class="panel-body">
                               <div class="table-responsive">
<table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Material Name</th>
											<th>Category</th>
											<th>Manufacturer</th>
											<th>Brand</th>
											<th>Size</th>
                                            <th>Supplier</th>                                         
                                            <th>Description</th>
											<th>Image</th>
											<th></th>
											<th></th>
                                        </tr>
                                    </thead>
					
                                    <tbody>									
									<?php
									while($qr_row=mysql_fetch_assoc($qr)){
									?>
                                        <tr class="odd gradeX">                                        
                                            <td><?php echo titleCase($qr_row['mat_name']); ?></td>
											<td><?php echo titleCase($qr_row['mat_cat_name']); ?></td>
											<td><?php echo titleCase($qr_row['man_name']); ?></td>
											<td><?php echo titleCase($qr_row['brand_name']); ?></td>
											<td><?php echo titleCase($qr_row['size_name']); ?></td>
                                            <td><?php echo titleCase($qr_row['sup_name']); ?></td>
                                             <td><?php echo titleCase($qr_row['description']);?></td>
											 <td></td>											 
											  <script>
											//When DOM loaded we attach click event to button
											$(document).ready(function() {	
												//Delete store
												$("#delmat_<?php echo $qr_row['mat_id'];?>").click(function(){												
													$("#matresults").empty();													
													var con = confirm("Are you sure you want to remove this material?");													
													if(con==true){
												//we select the first link 
													//then call the attr method to get back the href value
													var mat_id = $("#delmatval_<?php echo $qr_row['mat_id'];?>").attr("rel");												
													$.post("../process/delete_product.php",
													 { mat_id : mat_id},
													 function(mat_id) {
													 $("#matresults").html(mat_id);											 
												   });											
												}
														   
												});
											});
                                           </script>
										   <a href="" id="delmatval_<?php echo $qr_row['mat_id'];?>" rel="<?php echo $qr_row['mat_id'];?>"></a>
											<td><a class="btn btn-xs btn-warning" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&sec=settings&act=man_mat&ip=edit_mat&mat_id=<?php echo $qr_row['mat_id'];?>">Edit</a></td>
											<td><a class="btn btn-xs btn-danger" href="#list_materials" id="delmat_<?php echo $qr_row['mat_id'];?>">Delete</a></td>
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
                url: "../views/loads/load_material_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#material_data").html(response);
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
                url: "../views/loads/load_material_data.php", //Where form data is sent on submission
                dataType:"text", // Data type, HTML, json etc.
                data:myData, //Form variables
                success:function(response){
                $("#material_data").html(response);
				$("#loader").hide();     
                }
            });
}

</script>
<?php
}
?>
