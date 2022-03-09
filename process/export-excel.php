<?php


if(isset($_POST['export-excel']) && $_POST['export-excel'] !=''){
//Variables
$mat_name = sanitize_string($_POST['mat_name']);
$from_site = sanitize_string($_POST['site_name_from']);
$to_site = sanitize_string($_POST['site_name_to']);
$to_date = sanitize_string($_POST['to_date_period']);
$from_date =sanitize_string($_POST['from_date_period']);


if($mat_name=='All'){
$mat_name = '';
}else{
$mat_name = $mat_name;

}

$sql = "select st.site_name as sitefrom, s.site_name as siteto , dc.del_con_id, dc.del_no,dc.price, dc.inward_no, 
dc.details, dc.qty, dc.balance, dc.confirm_code, dc.price, pk.pack_name, s.site_name,
mt.mat_name, us.fname, us.lname, dc.date_received,dc.date_entered from delivery_confirmations as dc 
left join materials as mt on mt.mat_id=dc.mat_id
left join packages as pk on pk.pack_id = dc.pack_id
left join sites as s on s.site_id = dc.site_supply_id
left join users as us on us.user_id = dc.user_id
left join sites as st on st.site_id = dc.site_id
left join confirmation_approvals as ca on ca.confirm_code = dc.confirm_code
where (dc.site_supply_id='$from_site' 
and dc.site_id='$from_site' 
and dc.site_supply_id='$from_site') 
and (dc.date_received>='$from_date' 
and dc.date_received<='$to_date')
group by dc.confirm_code
";


$header = '';
$data ='';
 
$export = mysql_query($sql);
 
// extract the field names for header 
 
while ($fieldinfo=mysql_fetch_field($export))
{
	$header .= $fieldinfo->name."\t";
}
 
// export data 
while($row = mysql_fetch_row($export))
{
    $line = '';
    foreach($row as $value)
    {                                            
        if ((!isset($value)) || ($value == ""))
        {
            $value = "\t";
        }
        else
        {
            $value = str_replace('"','""',$value);
            $value = '"'.$value.'"'."\t";
        }
        $line .= $value;
    }
    $data .=trim($line). "\n";
}
$data = str_replace( "\r" , "" , $data );
 
if ( $data == "" )
{
    $data = "\nNo Record(s) Found!\n";                        
}
 
// allow exported file to download forcefully
header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=CON-".date('Y-m-d').".xls");
header("Pragma: no-cache");
header("Expires: 0");
print "$header\n$data";

}

  ?>