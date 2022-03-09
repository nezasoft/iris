<?php
  include("../connect_db/connect_db.php");

 $mat_id=sanitize_string($_POST["mat_id"]);
  $result=mysql_query("select * from materials as mt left join suppliers as sp on sp.sup_id = mt.sup_id 
  where mt.mat_id ='$mat_id'");
 while($row=mysql_fetch_array($result)){
     echo '<option value="'.$row['sup_id'].'">'.titleCase($row['sup_name']).'</option>';
  }

?>