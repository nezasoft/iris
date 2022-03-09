<?php
  include("../connect_db/connect_db.php");
  $result=mysql_query("select * from materials");
 while($row=mysql_fetch_array($result)){
     echo '<option value="'.$row['mat_id'].'">'.titleCase($row['mat_name']).'</option>';
  }

?>