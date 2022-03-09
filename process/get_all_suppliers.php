<?php
  include("../connect_db/connect_db.php");
  $result=mysql_query("select * from suppliers");
 while($row=mysql_fetch_array($result)){
     echo '<option value="'.$row['sup_id'].'">'.titleCase($row['sup_name']).'</option>';
  }

?>