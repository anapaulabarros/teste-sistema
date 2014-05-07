<?php

	require_once('../../includes/library.php');

	$listTasks = new request();
	$listTasks->LoadTask();
	$eventos = array();

	for($i = 0; $i < count($listTasks->tas_name); $i++)
	{
		$eventos[] = (object) array('title' => utf8_encode($listTasks->tas_name[$i]), 'start' => $listTasks->tas_start_date[$i], 'end' => $listTasks->tas_due_date[$i]);
	}

	//echo '<pre>';print_r($eventos);die();
	//echo '<pre>';print_r(json_encode($eventos));die();
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/fullcalendar/fullcalendar.css" rel='stylesheet' />
<link rel="stylesheet" href="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/fullcalendar/fullcalendar.print.css" rel='stylesheet' media='print' />



<script type="text/JavaScript" src="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/lib/moment.min.js"></script>
<script type="text/JavaScript" src="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/lib/jquery.min.js"></script>
<script type="text/JavaScript" src="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/lib/jquery-ui.custom.min.js"></script>
<script type="text/JavaScript" src="../../themes/deepblue/a-calendar/fullcalendar-2.0.0-beta2/fullcalendar/fullcalendar.min.js"></script>
<script type="text/JavaScript" src="../../themes/deepblue/a-calendar/script-calendar.js"></script>

<script type="text/javascript">
	$(function(){
		tarefas(<?php echo json_encode($eventos); ?>);
	});
</script>

</head>
<body>


<div id="calendar"></div>


</body>
</html>

