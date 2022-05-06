<?php
//Make a connection
include("../../../connection/connect.php");
include_once("../../../modules/permissions.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}

      //check if user want all records or has wants a filtered result set
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
           $url = '?users&action=user_reports&filter='.$val.'&';

           }else{
           $val = 50;

           $filter = '';
           $url = '?users&action=user_reports&';
           }

			$stmt = $conn->prepare("SELECT  id AS item_id FROM  sites");
            $stmt->execute();
            $num_rows = $stmt->rowCount();//count rows
            //save num rows in session
            $_SESSION['FON_SESS_NUM_ROWS'] = $num_rows;
            //save the url in session
            $_SESSION['FON_SESS_FILTER_URL'] = $url;
           // echo $_SESSION['FON_SESS_FILTER_URL'];

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
            
            $setLimit = $val;
            $pageLimit  = ($page * $setLimit) - $setLimit;

		      $stmt = $conn->prepare("SELECT id AS item_id, site_name,site_phone,site_email,site_postal,site_address,DATE_FORMAT(date_created, '%d %b %Y') AS inception_date,site_status,estimated_cost FROM sites ORDER BY site_name ASC LIMIT ".$pageLimit.",".$setLimit."" );
              $stmt->execute();
	          $displayed_records=0;
              $row_count = $stmt->rowCount();
			                                
	          if($num_rows>=1){
				  
				  ?>
				  

							<!--begin::Row-->
								<div class="row g-6 g-xl-9">
		   <?php
               $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
			   $count = 0;
               foreach($rows as $row) {
			   $site_status = $row['site_status'];			   
			   if($site_status=='Active'){
				   $site_stat = '<span class="badge badge-light-warning fw-bolder me-auto px-4 py-3">Active</span>';				   
			   }elseif($site_status=='In-Active'){
				   $site_stat = '<span class="badge badge-light-dark fw-bolder me-auto px-4 py-3">In-Active</span>';				   
				}elseif($site_status=='Completed'){
				   $site_stat = '<span class="badge badge-light-success fw-bolder me-auto px-4 py-3">Completed</span>';
				 }elseif($site_status=='In-Progress'){
				   $site_stat = '<span class="badge badge-light-primary fw-bolder me-auto px-4 py-3">Active</span>';				   
			   }
			   $count++;
			   
			   //get users under this site
			   $site_id = $row['item_id'];
			   $users = $conn->prepare("SELECT fname, lname FROM users WHERE site_id='".$site_id."'");
			   $users->execute();
			   $user_rows = $users->fetchAll(PDO::FETCH_ASSOC);
			   
              ?>
									<div class="col-md-6 col-xl-4">
										<a href="#" onclick="viewSiteDetail(<?php echo $row['item_id']; ?>)"  data-bs-toggle="modal" data-bs-target="#kt_modal_2"class="card border-hover-primary">
											<div class="card-header border-0 pt-9">
												<div class="card-title m-0">
													<div class="symbol symbol-50px w-50px bg-light">
														<img src="assets/media/svg/misc/infography.svg" alt="image" class="p-3" />
													</div>
												</div>
												<div class="card-toolbar">
													
													<?php echo $site_stat; ?>
												</div>
											</div>
											<div class="card-body p-9">
												<div class="fs-3 fw-bolder text-dark"><?php echo titleCase($row['site_name']); ?></div>
												<p class="text-gray-400 fw-bold fs-5 mt-1 mb-7"><?php echo $row['site_address']; ?></p>
												<div class="d-flex flex-wrap mb-5">
													<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-7 mb-3">
														<div class="fs-6 text-gray-800 fw-bolder"><?php echo $row['inception_date']; ?></div>
														<div class="fw-bold text-gray-400">Inception</div>
													</div>
													<div class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mb-3">
														<div class="fs-6 text-gray-800 fw-bolder">KES <?php echo number_format($row['estimated_cost'],2,".",","); ?></div>
														<div class="fw-bold text-gray-400">Estimated Budget</div>
													</div>
												</div>
												<div class="h-4px w-100 bg-light mb-5" data-bs-toggle="tooltip" title="This project 50% completed">
													<div class="bg-primary rounded h-4px" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
												<div class="symbol-group symbol-hover">
												<?php foreach($user_rows as $us_row){ ?>
													<div class="symbol symbol-35px symbol-circle" data-bs-toggle="tooltip" title="<?php echo titleCase($us_row['fname']." ".$us_row['lname']); ?>">
														<img alt="Pic" src="images/user.png" />
													</div>
											    <?php  } ?>
												</div>
											</div>
										</a>
									</div>
			  <?php } } ?>

								</div>
								
<div class="modal bg-white fade" tabindex="-1" id="kt_modal_2">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content shadow-none">
		<div id="wait_2" style="margin-left:20px;"><img width="30" height="30" src="images/loader.gif" />Loading content, please wait...</div>
		 <div id="site_modal_content">
		 
		 </div>
      
        </div>
    </div>
</div>
								
<script>
function viewSiteDetail(site_id){
$("#site_modal_content").empty();
$("#wait_2").show();
//document.title=""+site_name+"";
$("#site_modal_content").load("views/reports/site_detail.html?site_id="+site_id,function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait_2").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 									
}
</script>