<?php
  include("../connect_db/connect_db.php");

  $req_no=sanitize_string($_POST["req_no"]);
  $result=mysql_query("select sup.sup_name,sup.sup_id from requisitions as rq
   left join suppliers as sup on sup.sup_id = rq.supplier_id where rq.req_ref_no ='".$req_no."' group by sup.sup_name ");
      echo '<option value="156">No Supplier</option>';
 while($row=mysql_fetch_array($result)){
	 
     echo '<option value="'.$row['sup_id'].'">'.titleCase($row['sup_name']).'</option>';
  }

?>