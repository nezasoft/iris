<?php


if(isset($_POST['export-excel'])){
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


$out = '';

// Get all fields names in table "mytablename" in database "mydb".
$fields = mysql_list_fields($sql);

// Count the table fields and put the value into $columns.
$columns = mysql_num_fields($fields);

// Put the name of all fields to $out.
for ($i = 0; $i < $columns; $i++) {
$l=mysql_field_name($fields, $i);
$out .= '"'.$l.'",';
}
$out .="\n";

// Add all values in the table to $out.
while ($l = mysql_fetch_array($sql)) {
for ($i = 0; $i < $columns; $i++) {
$out .='"'.$l["$i"].'",';
}
$out .="\n";
}

// Open file export.csv.
$f = fopen ('export.csv','w');

// Put all values from $out to export.csv.
fputs($f, $out);
fclose($f);

header('Content-type: application/csv');
header('Content-Disposition: attachment; filename="export.csv"');
readfile('export.csv');

}

  ?>