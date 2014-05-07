
/*
 * Função para retornar as tarefas cadastradas
 * agenda é exibido na index do sistema
 **/
function tarefas (eventos) {

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			defaultView: 'basicWeek',
			allDaySlot: true,
			selecttable: true,
			editable: false,
			events: eventos
		});




}