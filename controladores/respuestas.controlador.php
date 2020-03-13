<?php

class ControladorRespuestas{

	/*=============================================
	REGISTRO DE RESULTADOS
	=============================================*/

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
	BUSCADOR
	=============================================*/

	static public function ctrBuscarProductos($busqueda){

		$tabla = "respuestas";

		$respuesta = ModeloRespuestas::mdlBuscarProductos($tabla, $busqueda);

		return $respuesta;

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

