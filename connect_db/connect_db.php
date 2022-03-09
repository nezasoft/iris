<?php
@ob_start();
ini_set('display_errors',false);
session_start();
//connect to db
$host = 'localhost';
$db = 'nezasoft_realex';
$user = 'nezasoft';
$pass = '4;h]7ITTb3Sm8w';  

$con = mysql_connect($host,$user,$pass,$db);
//if no connection made, generate an error message
//send mail functions
/*
require '../PHPMailer/PHPMailerAutoload.php';
    $mail = new PHPMailer;
    //Server settings
   // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    //$mail->Debugoutput = 'html';
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = '37.61.232.138';  // Specify main and backup SMTP servers
   /*$mail->SMTPAuth = false;                               // Enable SMTP authentication
    $mail->Username = 'info@nezakenya.com';                 // SMTP username
    $mail->Password ='#info2015';                           // SMTP password
    $mail->SMTPSecure = 'tls'; */                           // Enable TLS encryption, `ssl` also accepted
    /*$mail->Port = 26;                                    // TCP port to connect 
    $mail->setFrom('info@nezakenya.com', 'Elegant Properties Limited (CMA)');   //Set who the message is to be sent from
    $mail->AddEmbeddedImage('http://elegant.nezakenya.com/images/elegant_logo.png', 'Elegant Properties Ltd (CMA)');*/

if(!$con){
die('<script>alert("Sorry, we could not make a connection to database");</script>');
//if connection is successfull, try select db
}else{
$sel_db = mysql_select_db($db);
//if not display error message
	if(!$sel_db){
	die('<script>alert("Sorry, we could not select database");</script>');
	}else{//if connection is successfull, start session
	$_SESSION['COMSYS_AccountType']=='admin';
		//sanitize all input values
		function sanitize_string($var){
		$var= strip_tags($var);
		$var=htmlentities($var);
		$var=stripslashes($var);
		return mysql_real_escape_string($var);
		}
		//Convert to title Case
		function titleCase($string, $delimiters = array(" ", "-", ".", "'", "O'", "Mc"), $exceptions = array("and", "to", "of", "das", "dos", "I", "II", "III", "IV", "V", "VI")){
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
							foreach ($words as $wordnr => $word){
								if(in_array(mb_strtoupper($word, "UTF-8"), $exceptions)) {
									//check exceptions list for any words that should be in upper case
									$word = mb_strtoupper($word, "UTF-8");
								} elseif (in_array(mb_strtolower($word, "UTF-8"), $exceptions)) {
									//check exceptions list for any words that should be in upper case
									$word = mb_strtolower($word, "UTF-8");
								} elseif (!in_array($word, $exceptions)) {
									//convert to uppercase (non-utf8 only)
									$word = ucfirst($word);
								}
								array_push($newwords, $word);
							}
							$string = join($delimiter, $newwords);
					   }//foreach
					   return $string;
		}
	   // function to hash all saved passwords in databases
		function create_pass_hash($password) {
		global $con;
		return mysql_real_escape_string (hash_hmac('sha256',$password, 'c#haRl891', true));
		}
		//validate for numerical values
		/* digits only, no dots */
      function is_digits($element) {
	   return !preg_match ("/[^0-9]/", $element);
      }
	}

}


?>