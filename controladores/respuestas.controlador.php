<?php

class ControladorRespuestas{

	/*=============================================
	REGISTRO DE RESULTADOS
	=============================================*/

	public function ctrRespuestas(){

		if ( (isset($_POST["1"])) && (isset($_POST["regUser"])) ) {
		
			$respuestas = "";

			$usuario = $_POST["regUser"];

			for ($i=1; $i <= 113 ; $i++) { 
				
				if( isset($_POST[$i]) ){

					$respuestas = $respuestas.$_POST[$i];

				}

			}

			$tabla = "respuestas";
			$prueba = "Living Diagnosis Of Interest Test";

			$respuesta = ModeloRespuestas::mdlRespuestas($tabla, $respuestas, $usuario, $prueba);

		}

	}

	public function ctrRespuestasvpi(){

		if ( (isset($_POST["1"])) && (isset($_POST["regUser"])) ) {
		
			$respuestas = "";

			$usuario = $_POST["regUser"];

			for ($i=1; $i <=214; $i++) { 
				
				if( isset($_POST[$i]) ){

					$respuestas = $respuestas.$_POST[$i];
					
				}

			}

			$tabla = "respuestas";
			$prueba = "Vocational Preference Inventory";

			$respuesta = ModeloRespuestas::mdlRespuestas($tabla, $respuestas, $usuario, $prueba);

		}


	}

	public function ctrNlpRespuestas($NumPregunta){

		if ( (isset($_POST["1"])) && (isset($_POST["regUser"])) ) {
		
			$respuestas = "";

			$usuario = $_POST["regUser"];

			for ($i=1; $i <= 5 ; $i++) { 
		
				$respuestas = $respuestas.$_POST[$i];

			}

			$tabla = "respuestas";
			$prueba = "Neuro-Linguistic Programming";

			$respuesta = ModeloRespuestas::mdlRespuestas($tabla, $respuestas, $usuario, $prueba);

		}


	}

	public function ctrStRespuestas(){

		if ( (isset($_POST["1"])) && (isset($_POST["regUser"])) ) {
		
			$respuestas = "";

			$usuario = $_POST["regUser"];

			for ($i=1; $i <= 23 ; $i++) { 
		
				$respuestas = $respuestas.$_POST[$i];

			}

			$tabla = "respuestas";
			$prueba = "Study Habits";

			$respuesta = ModeloRespuestas::mdlRespuestas($tabla, $respuestas, $usuario, $prueba);

		}


	}

	/*=============================================
	BUSCADOR
	=============================================*/

	static public function ctrBuscarProductos($busqueda){

		$tabla = "respuestas";

		$respuesta = ModeloRespuestas::mdlBuscarProductos($tabla, $busqueda);

		return $respuesta;

	}

	public function ctrAnswer($count,$prueba){

		if ( (isset($_POST["1"])) && (isset($_POST["regUser"])) ) {
		
			$respuestas = "";

			$usuario = $_POST["regUser"];

			for ($i=1; $i <= $count ; $i++) { 
				
				if( isset($_POST[$i]) ){

					$respuestas = $respuestas.$_POST[$i];

				}

			}

			$tabla = "respuestas";

			$respuesta = ModeloRespuestas::mdlAnswer($tabla, $respuestas, $usuario, $prueba);

		}

	}

	/*=============================================
	LISTAR PRODUCTOS BUSCADOR
	=============================================*/

	static public function ctrListarProductosBusqueda($busqueda){

		$tabla = "respuestas";

		$respuesta = ModeloRespuestas::mdlListarProductosBusqueda($tabla, $busqueda);

		return $respuesta;

	}

}

