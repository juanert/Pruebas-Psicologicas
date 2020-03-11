/*=============================================
VALIDAR EL REGISTRO RESPUESTAS
=============================================*/
function registroPrueba(){

	// =============================================
	// VALIDAR CAMPOS
	// =============================================

	for (var i = 1; i <= 113; i++) {

		if($("[name='i']:checked").val()!=undefined){

	    alert('seleccionado:' + $("[name='i']:checked").val());

		}else{

	    alert('sin seleccinar');

		}
		
	}

	return false;
	
}