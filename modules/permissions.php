 <?php
  try{
	  $permissions_array = array();
	  $user_roles_array = array();
	  $user_role = $_SESSION['IRIS_ROLE_ID'];
					//initialize all user roles
					 $item1 = 0;
					 $item2 = 0;
					 $item3 = 0;
					 $item4 = 0;
					 $item5 = 0;
					 $item6 = 0;
					 $item7 = 0;
					 $item8 = 0;
					 $item9 = 0;
					 $item10 = 0;
					 $item11 = 0;
					 $item12 = 0;
					 $item13 = 0;
					 $item14 = 0;
					 $item15 = 0;
					 $item16 = 0;
					 $item17 = 0;
					 $item18 = 0;
					 $item19 = 0;
					 $item20 = 0;
					 $item21 = 0;
					 $item22 = 0;
					 $item23 = 0;
					 $item24 = 0;
					 $item25 = 0;
					 $item26 = 0;
					 $item27 = 0;
					 $item28 = 0;
					 $item29 = 0;
					 $item30 = 0;
					 $item31 = 0;
					 $item32 = 0;
					 $item33 = 0;
					 $item34 = 0;
					 $item35 = 0;
					 $item36 = 0;
					 $item37 = 0;
					 $item38 = 0;
					 $item39 = 0;
					 $item40 = 0;
					 $item41 = 0;
					 $item42 = 0;
					 $item43 = 0;
					 $item44 = 0;
					 $item45 = 0;
					 $item46 = 0;
					 $item47 = 0;
					 $item48 = 0;
					 $item49 = 0;
					 $item50 = 0;
					 $item51 = 0;
					 $item52 = 0;
					 $item53 = 0;
					 $item54 = 0;
					 $item55 = 0;
					 $item56 = 0;
					 $item57 = 0;
					 $item58 = 0;
					 $item59 = 0;
					 $item60 = 0;
					 $item61 = 0;
					 $item62 = 0;
					 $item63 = 0;
					 $item64 = 0;
					 $item65 = 0;
					 $item66 = 0;
					 $item67 = 0;
					 $item68 = 0;
					 $item69 = 0;
					 $item70 = 0;
					 $item71 = 0;
					 $item72 = 0;
					 $item73 = 0;
					 $item74 = 0;
					 $item75 = 0;
					 $item76 = 0;
					 $item77 = 0;
					 $item78 = 0;
					 $item79 = 0;
					 $item80 = 0;
					 $item81 = 0;
					 $item82 = 0;
					 $item83 = 0;
					 $item84 = 0;
					 $item85 = 0;
					 $item86 = 0;
					 $item87 = 0;
					 $item88 = 0;
					 $item89 = 0;
					 $item90 = 0;
					 $item91 = 0;
					 $item92 = 0;
					 $item93 = 0;
					 $item94 = 0;
					 $item95 = 0;
					 $item96 = 0;
					 $item97 = 0;
					 $item98 = 0;
					 $item99 = 0;
					 $item100 = 0;
					 $item101 = 0;
					 $item102 = 0;
					 $item103 = 0;
					 $item104 = 0;

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
	  $user_roles = $conn->prepare("SELECT ul.id AS level_id, lp.perm_id FROM role_permissions AS lp LEFT JOIN roles AS ul ON ul.id = lp.role_id WHERE ul.id = '".$user_role."'");
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
					 case 2:
					 $item2 = 1;
					 break;
					 case 3:
					 $item3 = 1;
					 break;
					 case 3:
					 $item3 = 1;
					 break;
					 case 4:
					 $item4 = 1;
					 break;
					 case 5:
					 $item5 = 1;
					 break;
					 case 6:
					 $item6 = 1;
					 break;
					 case 7:
					 $item7 = 1;
					 break;
					 case 7:
					 $item7 = 1;
					 break;
					 case 8:
					 $item8 = 1;
					 break;
					 case 9:
					 $item9 = 1;
					 break;
					 case 10:
					 $item10 = 1;
					 break;
					 case 11:
					 $item11 = 1;
					 break;
					 case 12:
					 $item12 = 1;
					 break;
					 case 13:
					 $item13 = 1;
					 break;
					 case 14:
					 $item14 = 1;
					 break;
					 case 15:
					 $item15 = 1;
					 break;
					 case 16:
					 $item16 = 1;
					 break;
					 case 17:
					 $item17 = 1;
					 break;
					 case 18:
					 $item18 = 1;
					 break;
					 case 19:
					 $item19 = 1;
					 break;
					 case 20:
					 $item20 = 1;
					 break;
					 case 21:
					 $item21 = 1;
					 break;
					 case 22:
					 $item22 = 1;
					 break;
					 case 23:
					 $item23 = 1;
					 break;
					 case 24:
					 $item24 = 1;
					 break;
					 case 25:
					 $item25 = 1;
					 break;
					 case 26:
					 $item26 = 1;
					 break;
					 case 27:
					 $item27 = 1;
					 break;
					 case 28:
					 $item28 = 1;
					 break;
					 case 29:
					 $item29 = 1;
					 break;
					 case 30:
					 $item30 = 1;
					 break;
					 case 31:
					 $item31 = 1;
					 break;
					 case 32:
					 $item32 = 1;
					 break;
					 case 33:
					 $item33 = 1;
					 break;
					 case 34:
					 $item34 = 1;
					 break;
					 case 35:
					 $item35 = 1;
					 break;
					 case 36:
					 $item36 = 1;
					 break;
					 case 37:
					 $item37 = 1;
					 break;
					 case 38:
					 $item38 = 1;
					 break;
					 case 39:
					 $item39 = 1;
					 break;
					 case 40:
					 $item40 = 1;
					 break;
					 case 41:
					 $item41 = 1;
					 break;
					 case 42:
					 $item42 = 1;
					 break;
					 case 43:
					 $item43 = 1;
					 break;
					 case 44:
					 $item44 = 1;
					 break;
					 case 45:
					 $item45 = 1;
					 break;
					 case 45:
					 $item45 = 1;
					 break;
					 case 46:
					 $item46 = 1;
					 break;
					 case 47:
					 $item47 = 1;
					 break;
					 case 48:
					 $item48 = 1;
					 break;
					 case 49:
					 $item49 = 1;
					 break;
					 case 50:
					 $item50 = 1;
					 break;
					 case 51:
					 $item51 = 1;
					 break;
					 case 52:
					 $item52 = 1;
					 break;
					 case 53:
					 $item53 = 1;
					 break;
					 case 54:
					 $item54 = 1;
					 break;
					 case 55:
					 $item55 = 1;
					 break;
					 case 56:
					 $item56 = 1;
					 break;
					 case 57:
					 $item57 = 1;
					 break;
					 case 58:
					 $item58 = 1;
					 break;
					 case 59:
					 $item59 = 1;
					 break;
					 case 60:
					 $item60 = 1;
					 break;
					 case 61:
					 $item61 = 1;
					 break;
					 case 61:
					 $item61 = 1;
					 break;
					 case 62:
					 $item62 = 1;
					 break;
					 case 63:
					 $item63 = 1;
					 break;
					 case 64:
					 $item64 = 1;
					 break;
					 case 65:
					 $item65 = 1;
					 break;
					 case 66:
					 $item66 = 1;
					 break;
					 case 67:
					 $item67 = 1;
					 break;
					 case 68:
					 $item68 = 1;
					 break;
					 case 69:
					 $item69 = 1;
					 break;
					 case 70:
					 $item70 = 1;
					 break;
					 case 71:
					 $item71 = 1;
					 break;
					 case 72:
					 $item72 = 1;
					 break;
					 case 73:
					 $item73 = 1;
					 break;
					 case 74:
					 $item74 = 1;
					 break;
					 case 75:
					 $item75 = 1;
					 break;
					 case 76:
					 $item76 = 1;
					 break;
					 case 77:
					 $item77 = 1;
					 break;
					 case 78:
					 $item78 = 1;
					 break;
					 case 79:
					 $item79 = 1;
					 break;
					 case 80:
					 $item80 = 1;
					 break;
					 case 81:
					 $item81 = 1;
					 break;					 
					 case 82:
					 $item82 = 1;
					 break;
					 case 83:
					 $item83 = 1;
					 break;
					 case 84:
					 $item84 = 1;
					 break;
					 case 85:
					 $item85 = 1;
					 break;
					 case 86:
					 $item86 = 1;
					 break;
					 case 87:
					 $item87 = 1;
					 break;
					 case 88:
					 $item88 = 1;
					 break;
					 case 89:
					 $item89 = 1;
					 break;
					 case 90:
					 $item90 = 1;
					 break;
					 case 91:
					 $item91 = 1;
					 break;
					 case 92:
					 $item92 = 1;
					 break;
					 case 93:
					 $item93 = 1;
					 break;
					 case 94:
					 $item94 = 1;
					 break;
					 case 95:
					 $item95 = 1;
					 break;
					 case 96:
					 $item96 = 1;
					 break;
					 case 97:
					 $item97 = 1;
					 break;
					 case 98:
					 $item98 = 1;
					 break;
					 case 99:
					 $item99 = 1;
					 break;
					 case 100:
					 $item100 = 1;
					 break;
					 case 101:
					 $item101 = 1;
					 break;
					 case 102:
					 $item102 = 1;
					 break;
					 case 103:
					 $item103 = 1;
					 break;
					 case 104:
					 $item104 = 1;
					 break;
					 						         					 
					 }				 				 
			 }			
		}  
}	  
 }catch(PDOException $e){
	 echo "Error:-".$e->getMessage();

 }