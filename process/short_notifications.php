<?php 

include('../connect_db/connect_db.php');
?>

<font color="#ffffff"><h3>Notifications</h3></font><hr/>
<div class="nn-alert-container">

<?php
$qr_nt = mysql_query("select *,substr(ref, 5,2) as sb,DATE_FORMAT(notification_date,'%d %b %y')as n_date,nt.ref,nt.link_ref,
DATE_FORMAT(notification_time,'%h:%i %p')as n_time from notifications  as nt left join users as us on us.user_id = nt.sender_id
 where nt.site_id='".$_SESSION['COMSYS_SiteID']."' and nt.notif_status='New' and nt.recepient_id='".$_SESSION['COMSYS_UserID']."' limit 10");
 
             $count_not = mysql_num_rows($qr_nt);
			 if($count_not==0){
			 die('<span class="error">* You have no new notifications</span><br/><br/>');
			 }
while($qr_rw_nt=mysql_fetch_array($qr_nt)){
?>

  <div class="nn-alert">
    <i class="fa fa-info-circle"></i>
    <strong><a href="<?php echo $qr_rw_nt['link_ref']; ?>" target="_blank"><?php echo $qr_rw_nt['notification_title']; ?></a></strong>
  <p>From: <?php echo $qr_rw_nt['fname']. ' '.$qr_rw_nt['lname']; ?> <?php echo $qr_rw_nt['n_time']; ?></p>
    
  </div>
  
  <?php
}
  ?>

  
</div>
<?php
 if($count_not>0){
?>
<br/><font color="#fff"size="+1"><a class="btn btn-success" href="?acc_type=<?php echo $_SESSION['COMSYS_AccountType']; ?>&site_id=<?php echo $_SESSION['COMSYS_SiteID']; ?>&sec=notif#ViewNotif">View All Notifications &raquo; </a> </font>

<?php
 }
?>

