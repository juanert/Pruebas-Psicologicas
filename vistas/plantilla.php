<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>Coachteen Academy</title>

	<?php

		/*=============================================
		MANTENER LA RUTA FIJA DEL PROYECTO
		=============================================*/
		
		$url = Ruta::ctrRuta();

		$icono = ControladorPlantilla::ctrEstiloPlantilla();

		echo '<link rel="icon" href="'.$url.$icono["icono"].'">'

	?>

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/bootstrap.min.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plugins/font-awesome.min.css">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu|Ubuntu+Condensed" rel="stylesheet">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/plantilla.css">

	<link rel="stylesheet" href="<?php echo $url; ?>vistas/css/cabezote.css">

	<script src="<?php echo $url; ?>vistas/js/plugins/jquery.min.js"></script>

	<script src="<?php echo $url; ?>vistas/js/plugins/bootstrap.min.js"></script>

	<script src="<?php echo $url; ?>vistas/js/plugins/jquery.easing.js"></script>



</head>

<body>

<?php

/*=============================================
CABEZOTE
=============================================*/

include "modulos/header.php";

/*=============================================
CONTENIDO DINÁMICO
=============================================*/

$rutas = array();
$ruta = null;
$infoProducto = null;

if(isset($_GET["ruta"])){

	$rutas = explode("/", $_GET["ruta"]);
	$item = "ruta";
	$valor =  $rutas[0];

	/*=============================================
	LISTA BLANCA DE URL'S AMIGABLES
	=============================================*/

	if($rutas[0] == "buscador" ||$rutas[0] == "results" || $rutas[0] == "ldoit" || $rutas[0] == "vpi"|| $rutas[0] == "vpiselfestimates" || $rutas[0] == "nlp" || $rutas[0] == "study-habits" || $rutas[0] == "social-skills"){

		include "modulos/".$rutas[0].".php";

	}else{

		include "modulos/error404.php";

	}

}else{

	include "modulos/ldoit.php";

}

?>

<script src="<?php echo $url; ?>vistas/js/plantilla.js"></script>
<script src="<?php echo $url; ?>vistas/js/respuestas.js"></script>
<script src="<?php echo $url; ?>vistas/js/scroll.js"></script>
<script src="<?php echo $url; ?>vistas/js/paginationvpi.js"></script>
<script src="<?php echo $url; ?>vistas/js/buscador.js"></script>
<script src="<?php echo $url; ?>vistas/js/finish.js"></script>

</body>
</html>