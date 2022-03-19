 <?php
  try{
	  $permissions_array = array();
	  $user_roles_array = array();
	  $user_role = $_SESSION['IRIS_ROLE_ID'];
	//initialize all user roles
	 $item1= 0;

	  //get all the roles
	  $perm=$conn->prepare("SELECT * FROM permissions ORDER BY permission_name");
	  $perm->execute();
	  $perm_rows = $perm->fetchAll(PDO::FETCH_ASSOC);
	  $count_perm = $perm->rowCount();
	  //save permissions in array
	  foreach($perm_rows as $row){
		  $permissions_array[] = $row['id'];
		  
		  
	  }

	  
	  //Get this users role
	  $user_roles = $conn->prepare("SELECT ul.id AS level_id, lp.perm_id FROM level_permissions AS lp LEFT JOIN roles AS ul ON ul.id = lp.level_id WHERE ul.id = '".$user_role."'");
	  $user_roles->execute();
	  $user_roles_rows = $user_roles->fetchAll(PDO::FETCH_ASSOC);
	  
	  //save roles in array
	  foreach($user_roles_rows as $row){
		  $user_roles_array[] = $row['perm_id'];
		  
		  
	  }
	  
	  //Compare permissions
	  $count_array = count($user_roles_array);
	  for($i=0;$i<=$count_array;$i++){
		if(!empty($user_roles_array[$i])){
			$item = $user_roles_array[$i];		
			 if(in_array($item,$permissions_array)){
				 
				 switch($item){
					 case 1:
					 $item1 = 1;
					 break;
	         					 
					 }
				 
				 
			 }
			
		}
         
		  
	  }
	  

 }catch(PDOException $e){
	 echo "Error:-".$e->getMessage();

 }