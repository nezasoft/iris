<?php
//Make a connection
include("../../connection/connect.php");
include_once("../../modules/permissions.php");
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

		   if(isset($_GET['filter_form_data']) && sanitize_string($_GET['filter_form_data'])=='true'){
		    
		    $filter = sanitize_string($_GET['filter']); 
			$filter_form_data = sanitize_string($_GET['filter_form_data']);
			$from = sanitize_string($_GET['from']); 
			$to = sanitize_string($_GET['to']); 
			$site = sanitize_string($_GET['site']);
			if($site=="ALL"){
			$filter_data = "AND d.site_id LIKE '%%'";
			}elseif($site!="ALL"){
			$filter_data = "AND d.site_id='".$site."'";
			}		
			
			$stmt = $conn->prepare("SELECT d.id AS item_id FROM delivery_note AS d LEFT JOIN materials AS m ON m.id = d.mat_id LEFT JOIN sites AS sf ON sf.id = d.site_id LEFT JOIN sites AS st ON st.id = d.to_site_id LEFT JOIN users AS us ON us.id = d.user_id WHERE d.to_site_id='".$_SESSION['IRIS_SITE_ID']."' AND (d.del_date>='".$from."' AND d.del_date<='".$to."') ".$filter_data."  GROUP BY d.delivery_no  ORDER BY d.id DESC");
		   }else{
			$stmt = $conn->prepare("SELECT d.id AS item_id FROM delivery_note AS d LEFT JOIN materials AS m ON m.id = d.mat_id LEFT JOIN sites AS sf ON sf.id = d.site_id LEFT JOIN sites AS st ON st.id = d.to_site_id LEFT JOIN users AS us ON us.id = d.user_id  WHERE d.to_site_id='".$_SESSION['IRIS_SITE_ID']."' GROUP BY d.delivery_no  ORDER BY d.id DESC");
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
			$from = sanitize_string($_GET['from']); 
			$to = sanitize_string($_GET['to']); 
			$site = sanitize_string($_GET['site']);
			if($site=="ALL"){
			$filter_data = "AND d.site_id LIKE '%%'";
			}elseif($site!="ALL"){
			$filter_data = "AND d.site_id='".$site."'";
			}	
		    $stmt = $conn->prepare("SELECT d.id AS item_id, d.delivery_no, d.del_details, d.delivery_name, sf.site_name AS site_from, st.site_name AS site_to, d.del_date, d.delivery_status, us.fname FROM delivery_note AS d LEFT JOIN materials AS m ON m.id = d.mat_id LEFT JOIN sites AS sf ON sf.id = d.site_id LEFT JOIN sites AS st ON st.id = d.to_site_id LEFT JOIN users AS us ON us.id = d.user_id WHERE d.to_site_id='".$_SESSION['IRIS_SITE_ID']."' AND (d.del_date>='".$from."' AND d.del_date<='".$to."') ".$filter_data." GROUP BY d.delivery_no    ORDER BY d.id DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}else{
			$stmt = $conn->prepare("SELECT d.id AS item_id, d.delivery_no, d.del_details, d.delivery_name, sf.site_name AS site_from, st.site_name AS site_to, d.del_date, d.delivery_status, us.fname FROM delivery_note AS d LEFT JOIN materials AS m ON m.id = d.mat_id LEFT JOIN sites AS sf ON sf.id = d.site_id LEFT JOIN sites AS st ON st.id = d.to_site_id LEFT JOIN users AS us ON us.id = d.user_id WHERE d.to_site_id='".$_SESSION['IRIS_SITE_ID']."' GROUP BY d.delivery_no    ORDER BY d.id  DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}						
$stmt->execute();
$displayed_records =0;
if($num_rows>=1){
?>
      	<div>
			<div class="table-responsive">
                <table class="table table-row-dashed table-striped table-row-gray-300 align-middle gs-0 gy-4" id="incoming_deliveries_data" >
                    <thead style="background:#0291FA ;color:#fff;font-weight:600;">
                      <tr class="fw-bolder text-muted bg-light-dark">
                        <th>Delivery No</th>
						<th>Delivery Name</th>
						<th>Site To</th>
						<th>Date</th>
						<th>Status</th>
						<th>User</th>
				        <th></th>
			           </tr>
                    </thead>
                    <tbody>
               <?php
               $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
			   $count = 0;
               foreach($rows as $row) {
			   $count++;
			   $t_type = $row['delivery_status'];			   
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
				  <td><?php echo $row['delivery_no']?></td>
				  <td><?php echo $row['delivery_name']?></td>
				  <td><?php echo titleCase($row['site_to']); ?></td>
				  <td><?php echo $row['del_date']; ?></td>
				  <td><?php echo $status; ?></td>
				  <td><?php echo titleCase($row['fname']); ?></td>
				  <td>
				  <div align="center"><a href="#" class="badge badge-success" data-bs-toggle="modal" data-bs-target="#ModalContentViewItem" onclick="viewDocument(<?php echo $row['delivery_no']; ?>)"> View</a> 
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
$("#content_data").empty();
$("#loader").show();
filter = <?php  echo $filter; ?>;
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/loads/load_deliveries_data.php", //Where form data is sent on submission
     dataType:"text", // Data type, HTML, json etc.
     data:myData, //Form variables
     success:function(response){
     $("#content_data").html(response);
	 $("#loader").hide();
     }
  });
}
</script>
<?php
}elseif(isset($_GET['filter_form_data']) && sanitize_string($_GET['filter_form_data'])=='true'){
$filter = sanitize_string($_GET['filter']); 
$filter_form_data = sanitize_string($_GET['filter_form_data']);
$from = sanitize_string($_GET['from']); 
$to = sanitize_string($_GET['to']); 
?>
<script>
function getdata(pageno,filter,filter_form_data,supplier,site,from,to){
//empty response
$("#content_data").empty();
$("#loader").show();
filter = <?php  echo $filter; ?>;
filter_form_data = <?php  echo $filter_form_data; ?>;
from = "<?php  echo $from; ?>";
to = "<?php  echo $to; ?>";
site = "<?php  echo $site; ?>";
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter + '&filter_form_data=' + filter_form_data   + '&from=' + from  + '&to=' + to  + '&site=' + site;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/loads/load_deliveries_data.php", //Where form data is sent on submission
     dataType:"text", // Data type, HTML, json etc.
     data:myData, //Form variables
     success:function(response){
     $("#content_data").html(response);
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
$("#content_data").empty();
$("#loader").show();
	// source of data	
	var myData = 'page=' + pageno;
	 jQuery.ajax({
      type: "GET", // Post / Get method
      url: "views/loads/load_deliveries_data.php", //Where form data is sent on submission
      dataType:"text", // Data type, HTML, json etc.
      data:myData, //Form variables
      success:function(response){
      $("#content_data").html(response);
	  $("#loader").hide();     
      }
});
}
</script>
<?php
}
?>
<script>
$("#incoming_deliveries_data").tableExport({

  // Displays table headers (th or td elements) in the <thead>
  headers: true,                    

  // Displays table footers (th or td elements) in the <tfoot>    
  footers: true, 

  // Filetype(s) for the export
  formats: ["csv"],           

  // Filename for the downloaded file
  fileName: "Incoming Deliveries Report",                         

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
  sheetname: "Incoming Deliveries Report" 

});

</script>
