<?php
//Make a connection
include("../../connection/connect.php");
include_once("../../modules/permissions.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
$year = sanitize_string($_GET['year']);
//get data 
$data = $conn->prepare("SELECT SUM(total) AS ex_total, DATE_FORMAT(order_date, '%b') AS month FROM expenditure WHERE EXTRACT(YEAR FROM order_date)=".$year." GROUP BY EXTRACT(MONTH FROM order_date) ORDER BY EXTRACT(MONTH FROM order_date) ASC");
$data->execute();
$data_rows = $data->fetchAll(PDO::FETCH_ASSOC);

?>
<script type="text/javascript" src="../../js/Chart.js"></script>
<canvas id="purchases_trend_chart"></canvas>

<script>
		/*----------------------------------------*/
	/*  1.  Basic Line Chart
	/*----------------------------------------*/
	var ctx = document.getElementById("purchases_trend_chart");
	var basiclinechart = new Chart(ctx, {
		type: 'line',
		data: {
			labels: [<?php foreach($data_rows as $tx_row){ echo '"'.$tx_row['month'].'"'.","; } ?>],
			datasets: [{
				label: "KES",
				fill: false,
                backgroundColor: '#006DF0',
				borderColor: '#006DF0',
				data: [<?php foreach($data_rows as $tx_row){ echo $tx_row['ex_total'].",";  }?>]
            }]
		},
		options: {
			responsive: true,
			title:{
				display:true,
				text:"Expenditure"
			},
			tooltips: {
				mode: 'index',
				intersect: false,
			},
			hover: {
				mode: 'nearest',
				intersect: true
			},
			scales: {
				xAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					},
					ticks: {
					  fontColor: "#000", // this here
					},
					scaleLabel: {
						display: true,
						labelString: 'Month'
					}
				}],
				yAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					},
					ticks: {
					  fontColor: "#000", // this here
					},
					scaleLabel: {
						display: true,
						labelString: 'KES'
					}
				}]
			}
		}
	});
		
	
</script>