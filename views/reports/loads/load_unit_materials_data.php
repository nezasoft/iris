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
			$from = sanitize_string($_GET['from']); 
			$to = sanitize_string($_GET['to']); 
			$stmt = $conn->prepare("SELECT mi.id AS item_id  FROM materials_issuance AS mi LEFT JOIN materials_request_form AS mr ON mr.id = mi.requisition_id LEFT JOIN materials AS mt ON mt.id = mr.mat_id LEFT JOIN packages AS pk ON pk.id = mt.pack_id LEFT JOIN sizes AS s ON s.id = mt.size_id  WHERE mr.building_id='".$unit_id."' AND (mi.date_issue>='".$from."' AND mi.date_issue<='".$to."') GROUP BY mi.mat_id ORDER BY SUM(mi.qty) DESC");
		   }else{
			$stmt = $conn->prepare("SELECT mi.id AS item_id FROM materials_issuance AS mi LEFT JOIN materials_request_form AS mr ON mr.id = mi.requisition_id LEFT JOIN materials AS mt ON mt.id = mr.mat_id LEFT JOIN packages AS pk ON pk.id = mt.pack_id LEFT JOIN sizes AS s ON s.id = mt.size_id  WHERE mr.building_id='".$unit_id."' GROUP BY mi.mat_id ORDER BY SUM(mi.qty) DESC");
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
		    $stmt = $conn->prepare("SELECT mi.id AS item_id, SUM(mi.qty) AS total_qty, mt.mat_name, pk.pack_name,pk.pack_size, s.size_name  FROM materials_issuance AS mi LEFT JOIN materials_request_form AS mr ON mr.id = mi.requisition_id LEFT JOIN materials AS mt ON mt.id = mr.mat_id LEFT JOIN packages AS pk ON pk.id = mt.pack_id LEFT JOIN sizes AS s ON s.id = mt.size_id  WHERE mr.building_id='".$unit_id."' AND (mi.date_issue>='".$from."' AND mi.date_issue<='".$to."') GROUP BY mi.mat_id ORDER BY SUM(mi.qty) DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}else{
			$stmt = $conn->prepare("SELECT mi.id AS item_id, SUM(mi.qty) AS total_qty, mt.mat_name, pk.pack_name,pk.pack_size, s.size_name  FROM materials_issuance AS mi LEFT JOIN materials_request_form AS mr ON mr.id = mi.requisition_id LEFT JOIN materials AS mt ON mt.id = mr.mat_id LEFT JOIN packages AS pk ON pk.id = mt.pack_id LEFT JOIN sizes AS s ON s.id = mt.size_id  WHERE mr.building_id='".$unit_id."' GROUP BY mi.mat_id ORDER BY SUM(mi.qty) DESC LIMIT ".$pageLimit.",".$setLimit."" );
			}						
$stmt->execute();
$displayed_records = 0;
if($num_rows>=1){
?>
      	<div>
			<div class="table-responsive">
                <table class="table table-row-dashed table-striped table-row-gray-300 align-middle gs-0 gy-4"id="list_table_data" >
                    <thead style="background:#0291FA ;color:#fff;font-weight:600;">
                      <tr class="fw-bolder text-muted bg-light-dark">
                        <th>#</th>
                        <th>Item/Material</th>
						<th>Quantity</th>
						<th>Package</th>
			           </tr>
                    </thead>
                    <tbody>
               <?php
               $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
			   $count = 0;
               foreach($rows as $row) {
			   $count++;
            ?>
              <tr>  
                  <td><?php echo $row['item_id']; ?></td>
				  <td><?php echo titleCase($row['mat_name']); ?></td>
				  <td><?php echo $row['total_qty']; ?></td>
				  <td><?php echo titleCase($row['pack_name']); ?></td>
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
unit_id = <?php echo $unit_id ?>
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/reports/loads/load_unit_materials_data.php", //Where form data is sent on submission
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
function getdata(pageno,filter,filter_form_data,from,to){
//empty response
$("#content_data").empty();
$("#loader").show();
filter = <?php  echo $filter; ?>;
filter_form_data = <?php  echo $filter_form_data; ?>;
from = "<?php  echo $from; ?>";
to = "<?php  echo $to; ?>";
	// source of data	
	var myData = 'page=' + pageno + '&filter=' + filter + '&filter_form_data=' + filter_form_data  + '&from=' + from  + '&to=' + to ;
	 jQuery.ajax({
     type: "GET", // Post / Get method
     url: "views/reports/loads/load_unit_materials_data.php", //Where form data is sent on submission
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
      url: "views/reports/loads/load_unit_materials_data.php", //Where form data is sent on submission
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
