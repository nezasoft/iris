<?php
session_start();
ini_set('display_errors',true);
/**
 * @author Walter Omedo - Nezasoft Limited
 * @copyright 2020
 */
$now = time(); // or your date as well
$current_date = '2022-01-31';
$your_date = strtotime($current_date);
$datediff = $now - $your_date;
$date_diff = round($datediff / (60 * 60 * 24));	
/*if($date_diff>=0){
 die("Trial Period Expired!");   
}*/
date_default_timezone_set("Africa/Nairobi");
$db_prefix='';
//Establish connection to server via PDO Object
	try{
		$conn = new PDO('mysql:host=localhost;dbname=iris;charset=utf8', 'root', '');
		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES,false);
		if(!$conn){
			die('Error connecting to DB Server. Check your credentials');
		}else{
			
			function sanitize_string($var){
				$var= strip_tags($var);
				$var=htmlentities($var);
				$var = trim($var);
				$var = str_replace("'"," ",$var);
				return $var;
			}
			
			function clean($string) {
			   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

			   return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
			}
			// function to hash all saved passwords in databases
			function create_pass_hash($password) {
				global $conn;
				return hash_hmac('sha256',$password, '!Ne$Zso@fT2021', true);
			}
			//Convert to title Case
			function titleCase($string, $delimiters = array(" ", "-", ".", "'", "O'", "Mc"), $exceptions = array("and", "to", "of", "das", "dos", "I", "II", "III", "IV", "V", "VI"))
					{
						/*
						 * Exceptions in lower case are words you don't want converted
						 * Exceptions all in upper case are any words you don't want converted to title case
						 *   but should be converted to upper case, e.g.:
						 *   king henry viii or king henry Viii should be King Henry VIII
						 */
						$string = mb_convert_case($string, MB_CASE_TITLE, "UTF-8");
						foreach ($delimiters as $dlnr => $delimiter) {
							$words = explode($delimiter, $string);
							$newwords = array();
							foreach ($words as $wordnr => $word) {
								if (in_array(mb_strtoupper($word, "UTF-8"), $exceptions)) {
									// check exceptions list for any words that should be in upper case
									$word = mb_strtoupper($word, "UTF-8");
								} elseif (in_array(mb_strtolower($word, "UTF-8"), $exceptions)) {
									// check exceptions list for any words that should be in upper case
									$word = mb_strtolower($word, "UTF-8");
								} elseif (!in_array($word, $exceptions)) {
									// convert to uppercase (non-utf8 only)
									$word = ucfirst($word);
								}
								array_push($newwords, $word);
							}
							$string = join($delimiter, $newwords);
					   }//foreach
					   return $string;
					}
			//Get all the values between two dates
            function createDateRangeArray($strDateFrom,$strDateTo)
			{
				// takes two dates formatted as YYYY-MM-DD and creates an
				// inclusive array of the dates between the from and to dates.

				// could test validity of dates here but I'm already doing
				// that in the main script

				$aryRange=array();

				$iDateFrom=mktime(1,0,0,substr($strDateFrom,5,2), substr($strDateFrom,8,2),substr($strDateFrom,0,4));
				$iDateTo=mktime(1,0,0,substr($strDateTo,5,2), substr($strDateTo,8,2),substr($strDateTo,0,4));

				if ($iDateTo>=$iDateFrom)
				{
					array_push($aryRange,date('Y-m-d',$iDateFrom)); // first entry
					while ($iDateFrom<$iDateTo)
					{
						$iDateFrom+=86400; // add 24 hours
						array_push($aryRange,date('Y-m-d',$iDateFrom));
					}
				}
				return $aryRange;
			}			
			//Lets expire sessions after a period of inactivity
			//Start our session.
			//Expire the session if user is inactive for 60
			//minutes or more.
			$expireAfter = 60;			 
			//Check to see if our "last action" session
			//variable has been set.
		 /*	if(isset($_SESSION['FON_LAST_ACTION'])){			
				//Figure out how many seconds have passed
				//since the user was last active.
				$secondsInactive = time() - $_SESSION['FON_LAST_ACTION'];				
				//Convert our minutes into seconds.
				$expireAfterSeconds = $expireAfter * 60;				
				//Check to see if they have been inactive for too long.
				if($secondsInactive >= $expireAfterSeconds){
					//User has been inactive for too long.
					//Kill their session.
					session_unset();
					session_destroy();				
				}				
			}			 
			//Assign the current timestamp as the user's
			//latest activity
			$_SESSION['FON_LAST_ACTION'] = time();*/
			/*$gateway = $conn->prepare("SELECT * FROM sms_gateway  LIMIT 1");
            $gateway->execute();
            $gateway_row_count = $gateway->rowCount();
            $gateway_row = $gateway->fetch(PDO::FETCH_ASSOC);
            //put the sender id;
            $senderId=$gateway_row['sender_id'];
            $serverUrl=$gateway_row['url'];
            $authKey=$gateway_row['token'];
            $routeId=$gateway_row['route'];
            
            function sendsmsPOST($mobileNumber,$senderId,$routeId,$message,$serverUrl,$authKey){
            //Prepare you post parameters
            $postData = array('mobileNumbers' => $mobileNumber,'smsContent' => $message,'senderId' => $senderId,'routeId' => $routeId,"smsContentType" =>'english');
            $data_json = json_encode($postData);
            $url="http://".$serverUrl."/rest/services/sendSMS/sendGroupSms?AUTH_KEY=".$authKey;
            // init the resource
            $ch = curl_init();
            curl_setopt_array($ch, array(
            CURLOPT_URL => $url,
            CURLOPT_HTTPHEADER => array('Content-Type: application/json','Content-Length: ' . strlen($data_json)),
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $data_json,
            CURLOPT_SSL_VERIFYHOST => 0,
            CURLOPT_SSL_VERIFYPEER => 0
            ));
            //get response
            $output = curl_exec($ch);
            //Print error if any
            if(curl_errno($ch)){
             echo 'error:' . curl_error($ch);
            }
            curl_close($ch);
            return $output;
            }*/
		
		}
		
	}catch(PDOException $e){
		echo '<title>Connection Error!!!</title>';
		die("<font color='red'>Error connecting to database:</font>".$e->getMessage());

	}


?>



