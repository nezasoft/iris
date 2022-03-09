<?php
  include("../connect_db/connect_db.php");

 $req_no=sanitize_string($_POST["req_no"]);
  $result=mysql_query("select mt.mat_id,mt.mat_name from requisitions as rq
   left join materials as mt on mt.mat_id = rq.mat_id where rq.req_ref_no ='".$req_no."' ");
 while($row=mysql_fetch_array($result)){
     echo '<option value="'.$row['mat_id'].'">'.titleCase($row['mat_name']).'</option>';
  }

?>