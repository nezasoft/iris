<?php
  include("../connect_db/connect_db.php");

 $mat_id=sanitize_string($_POST["mat_id"]);
 $req_name = sanitize_string($_POST["req_name"]);
  $result=mysql_query("select *  from  requisitions where req_ref_no='$req_name' and mat_id='$mat_id'");
$row=mysql_fetch_array($result);
     echo $row['qty'];;
 

?>