<?php
  include("../connect_db/connect_db.php");

 $req_no=sanitize_string($_POST["req_no"]);
 $supplier=sanitize_string($_POST["supplier"]);
 $mat=sanitize_string($_POST["mat"]);
  $result=mysql_query("select qty from requisitions where mat_id='".$mat."' and supplier_id='".$supplier."' and req_ref_no='".$req_no."'  limit 1");
  $row = mysql_fetch_assoc($result);
  echo $row['qty'];

?>