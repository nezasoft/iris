<?php
//Make a connection
include("../.././../connection/connect.php");
include_once("../../.././modules/permissions.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
           //check if user want all records or has wants a filtered result set
           if(isset($_GET['filter']) && sanitize_string($_GET['filter'])){
           $val = sanitize_string($_GET['filter']);
           $filter = 'LIMIT '.$val;
           $url = '?reports&filter='.$val.'&';
           }else{
           $val = 50;
           $filter = '';
           $url = '?reports&';
           }
           $unit_id = sanitize_string($_GET['unit_id']);
		   if(isset($_GET['filter_form_data']) && sanitize_string($_GET['filter_form_data'])=='true'){
		    
		    $filter = sanitize_string($_GET['filter']); 
			$filter_form_data = sanitize_string($_GET['filter_form_data']);
			$t_type = sanitize_string($_GET['t_type']); 
			$from = sanitize_string($_GET['from']); 
			$to = sanitize_string($_GET['to']); 
			
			if($t_type=="ALL"){
			$filter_t_type = "AND po.order_status LIKE '%%'";
			}elseif($t_type!="ALL"){
			$filter_t_type = "AND po.order_status='".$t_type."'";
			}
			$stmt = $conn->prepare("SELECT po.id AS item_id FROM purchase_order AS po LEFT JOIN materials AS mt ON mt.id = po.mat_id LEFT JOIN suppliers AS s ON s.id = po.sup_id LEFT JOIN sites AS st ON st.id = po.site_id LEFT JOIN users AS us ON us.id = po.user_id LEFT JOIN site_materials_request_form AS sr ON sr.id = po.req_id LEFT JOIN building AS b ON b.id = sr.building_id   WHERE sr.building_id='".$unit_id."' ".$filter_t_type." AND (po.order_date>='".$from."' AND po.order_date<='".$to."') GROUP BY po.order_no  ORDER BY po.id DESC");
		   }else{
			$stmt = $conn->prepare("SELECT po.id AS item_id FROM purchase_order AS po LEFT JOIN materials AS mt ON mt.id = po.mat_id LEFT JOIN suppliers AS s ON s.id = po.sup_id LEFT JOIN sites AS st ON st.id = po.site_id LEFT JOIN users AS us ON us.id = po.user_id LEFT JOIN site_materials_request_form AS sr ON sr.id = po.req_id  LEFT JOIN building AS b ON b.id = sr.building_id  WHERE sr.building_id='".$unit_id."'  GROUP BY po.order_no  ORDER BY po.id DESC");
			}							
            $stmt->execute();
            $num_rows = $stmt->rowCount();//count rows
			$total_records = $num_rows;
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
			if(isset($_GET['filter_form_data']) && sanitize_string($_GET['filter_form_data'])=='true'){
		    $filter = sanitize_string($_GET['filter']); 
			$filter_form_data = sanitize_string($_GET['filter_form_data']);
			$t_type = sanitize_string($_GET['t_type']); 
			$from = sanitize_string($_GET['from']); 
			$to = sanitize_string($_GET['to']);  
			if($t_type=="ALL"){
			$filter_t_type = "AND po.order_status LIKE '%%'";
			}elseif($t_type!="ALL"){
			$filter_t_type = "AND po.order_status ='".$t_type."'";
			}
		    $stmt = $conn->prepare("SELECT  po.id AS item_id,po.order_no, po.order_details,s.sup_name, po.order_date,po.order_status, st.site_name, us.fname , b.building_name AS unit_name FROM purchase_order AS po LEFT JOIN materials AS mt ON mt.id = po.mat_id LEFT JOIN suppliers AS s ON s.id = po.sup_id LEFT JOIN sites AS st ON st.id = po.site_id LEFT JOIN users AS us ON us.id = po.user_id LEFT JOIN site_materials_request_form AS sr ON sr.id = po.req_id LEFT JOIN building AS b ON b.id = sr.building_id  WHERE sr.building_id='".$unit_id."' ".$filter_t_type." AND (po.order_date>='".$from."' AND po.order_date<='".$to."') GROUP BY po.order_no  ORDER BY po.id DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}else{
			$stmt = $conn->prepare("SELECT  po.id AS item_id,po.order_no, po.order_details,s.sup_name, po.order_date,po.order_status, st.site_name, us.fname, b.building_name AS unit_name FROM purchase_order AS po LEFT JOIN materials AS mt ON mt.id = po.mat_id LEFT JOIN suppliers AS s ON s.id = po.sup_id LEFT JOIN sites AS st ON st.id = po.site_id LEFT JOIN users AS us ON us.id = po.user_id LEFT JOIN site_materials_request_form AS sr ON sr.id = po.req_id LEFT JOIN building AS b ON b.id = sr.building_id   WHERE sr.building_id='".$unit_id."'  GROUP BY po.order_no  ORDER BY po.id DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}						
$stmt->execute();
$displayed_records =0;
if($num_rows>=1){
?>
      	<div>
			<div class="table-responsive">
                <table class="table table-row-dashed table-striped table-row-gray-300 align-middle gs-0 gy-4" id="purchase_order_data" >
                    <thead style="background:#0291FA ;color:#fff;font-weight:600;">
                      <tr class="fw-bolder text-muted bg-light-dark">
                        <th>Order No</th>
						<th>Supplier</th>
						<th>Order Desc</th>
						<th>Requested By</th>
						<th>Status</th>
						<th>Date</th>
						<th>Site</th>
						<th>Unit</th>
				        <th></th>
			           </tr>
                    </thead>
                    <tbody>
               <?php
               $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
			   $count = 0;
               foreach($rows as $row) {
			   $count++;
			   $t_type = $row['order_status'];			   
			   if($t_type=='A'){
				  $status = '<span class="badge badge-success">Approved</span>'; 				   
			   }elseif($t_type=='P'){
				   $status = '<span class="badge badge-warning">Pending</span>'; 
			   }elseif($t_type=='R'){
				   $status = '<span class="badge badge-danger">Rejected</span>';
               }elseif($t_type=='C'){
				   $status = '<span class="badge badge-info">Completed</span>';  
				}elseif($t_type=='N'){
				   $status = '<span class="badge badge-info">New</span>';				   
				   
			   }
            ?>
              <tr>  
				  <td><?php echo $row['order_no']?></td>
				  <td><?php echo titleCase($row['sup_name']); ?></td>
				  <td><?php echo $row['order_details']; ?></td>
				  <td><?php echo titleCase($row['fname']); ?></td>
				  <td><?php echo $status; ?></td>
				  <td><?php echo $row['order_date']; ?></td>
				  <td><?php echo titleCase($row['site_name']); ?></td>
				  <td><?php echo titleCase($row['unit_name']); ?></td>
				  <td>
				  <div align="center"><a href="#" class="badge badge-success"  onclick="viewDocument(<?php echo $row['order_no']; ?>)"> View</a> 
				  </div>
				  </td>
              </tr>   
            <?php
            }
			 $displayed_records = (($page-1) * $val ) + $count;
            ?>
            </tbody>			
        </table>
		 </div>
	 <?php  
	    }else{
		echo '<div class="alert alert-close alert-danger"><div class="alert-content"></div><font color="red"><i class="glyph-icon icon-check-circle"></i></font> There are currently no records!</div>';

	   }
         ?>
		<div class="pagination pagination-sm m-t-0 m-b-0 pull-right" id="paginated_data">
            <?php  	echo displayPaginationBelow($setLimit,$page);   ?>
     </div>
 <br/><br/>
 <div id="rec_found" class="alert alert-success">
 <font color="green">
 <i class="glyph-icon icon-check-circle"></i></font>&nbsp;<?php    echo "Displaying <strong>".$displayed_records."</strong> records out of total <strong>".$num_rows."</strong> found 
";?>
</div>
</div>

<?php
if(isset($_GET['filter']) && $_GET['filter'] && !isset($_GET['filter_form_data'])){
$filter = sanitize_string($_GET['filter']); 
?>
<script>
function getdata(pageno,filter){
//empty response
$("#content_data_site_detail").empty();
$("#loader_site_detail").show();
filter = <?php  echo $filter; ?>;
unit_id = <?php echo $unit_id; ?>;
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter + '&unit_id='+unit_id;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/reports/loads/load_unit_order_data.php", //Where form data is sent on submission
     dataType:"text", // Data type, HTML, json etc.
     data:myData, //Form variables
     success:function(response){
     $("#content_data_site_detail").html(response);
	 $("#loader_site_detail").hide();
     }
  });
}
</script>
<?php
}elseif(isset($_GET['filter_form_data']) && sanitize_string($_GET['filter_form_data'])=='true'){
$filter = sanitize_string($_GET['filter']); 
$filter_form_data = sanitize_string($_GET['filter_form_data']);
$t_type = sanitize_string($_GET['t_type']); 
$from = sanitize_string($_GET['from']); 
$to = sanitize_string($_GET['to']);  
$unit_id = sanitize_string($_GET['unit_id']); 
?>
<script>
function getdata(pageno,filter,filter_form_data,t_type,from,to,site_id){
//empty response
$("#content_data_site_detail").empty();
$("#loader_site_detail").show();
filter = <?php  echo $filter; ?>;
filter_form_data = <?php  echo $filter_form_data; ?>;
t_type = "<?php  echo $t_type; ?>;";
from = "<?php  echo $from; ?>";
to = "<?php  echo $to; ?>";
unit_id = "<?php  echo $unit_id; ?>";
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter + '&filter_form_data=' + filter_form_data  + '&t_type=' + t_type  + '&from=' + from  + '&to=' + to + '&unit_id=' + unit_id ;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/reports/loads/load_unit_order_data.php", //Where form data is sent on submission
     dataType:"text", // Data type, HTML, json etc.
     data:myData, //Form variables
     success:function(response){
     $("#content_data_site_detail").html(response);
	 $("#loader_site_detail").hide();
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
$("#content_data_site_detail").empty();
$("#loader_site_detail").show();
	// source of data	
	var myData = 'page=' + pageno;
	 jQuery.ajax({
      type: "GET", // Post / Get method
      url: "views/reports/loads/load_unit_order_data.php", //Where form data is sent on submission
      dataType:"text", // Data type, HTML, json etc.
      data:myData, //Form variables
      success:function(response){
      $("#content_data_site_detail").html(response);
	  $("#loader_site_detail").hide();     
      }
});
}
</script>
<?php
}
?>
<script>
$("#purchase_order_data").tableExport({

  // Displays table headers (th or td elements) in the <thead>
  headers: true,                    

  // Displays table footers (th or td elements) in the <tfoot>    
  footers: true, 

  // Filetype(s) for the export
  formats: ["csv"],           

  // Filename for the downloaded file
  fileName: "LPO Report",                         

  // Style buttons using bootstrap framework  
  bootstrap: false,

  // Automatically generates the built-in export buttons for each of the specified formats   
  exportButtons: true,                          

  // Position of the caption element relative to table
  position: "top",                   

  // (Number, Number[]), Row indices to exclude from the exported file(s)
  ignoreRows:null,                             

  // (Number, Number[]), column indices to exclude from the exported file(s)              
  ignoreCols: null,                   

  // Removes all leading/trailing newlines, spaces, and tabs from cell text in the exported file(s)     
  trimWhitespace: false,

  // (Boolean), set direction of the worksheet to right-to-left (default: false)
  RTL: false, 

  // (id, String), sheet name for the exported spreadsheet, (default: 'id') 
  sheetname: "LPO Report" 

});

</script>
