<?php

class ControladorPlantilla{

	/*=============================================
	LLAMAMOS LA PLANTILLA
	=============================================*/

	public function plantilla(){

		//if the class doesn´t exists then it loads 
		//the document that holds the class in local path mode.

		include "vistas/plantilla.php";
	}

	/*=============================================
	TRAEMOS LOS ESTILOS DINÁMICOS DE LA PLANTILLA
	=============================================*/

	public function ctrEstiloPlantilla(){

		$tabla = "plantilla";

		$respuesta = ModeloPlantilla::mdlEstiloPlantilla($tabla);

		return $respuesta;
	}

	/*=============================================
	TRAEMOS LAS PREGUNTAS A LA PLANTILLA
	=============================================*/

	public function ctrPreguntas(){

		$tabla = "preguntas";

		$respuesta = ModeloPlantilla::mdlPreguntas($tabla);

		return $respuesta;
	}

	public function ctrPreguntasvpi($listapreguntas, $listprof){

		if (class_exists('ModeloPlantilla')==false){
			$docroot =  $_SERVER['DOCUMENT_ROOT'];
       		include ($docroot."/frontend/modelos/plantilla.modelo.php");
		}

		$tabla = "preguntasvpi";

		$respuesta = ModeloPlantilla::mdlPreguntasvpi($tabla,$listapreguntas,$listprof);

		 return $respuesta;

	}


	/*=============================================
	PREGUNTAS NPL
	=============================================*/

	public function ctrNplPreguntas(){

		$tabla = "npl";

		$respuesta = ModeloPlantilla::mdlNplPreguntas($tabla);

		return $respuesta;

	}

	/*=============================================
	NUMERACIÓN NPL
	=============================================*/

	public function ctrNplNumeracion(){

		$tabla = "nplnumeracion";

		$respuesta = ModeloPlantilla::mdlNplNumeracion($tabla);

		return $respuesta;

	}

	/*=============================================
	STUDY HABITS QUESTIONS
	=============================================*/

	public function ctrStQuestions(){

		$tabla = "st_questions";

		$respuesta = ModeloPlantilla::mdlStQuestions($tabla);

		return $respuesta;

	}

	/*=============================================
	QUESTIONS
	=============================================*/

	public function ctrQuestions($prueba){

		$tabla = "questions";

		$respuesta = ModeloPlantilla::mdlQuestions($prueba,$tabla);

		return $respuesta;

	}

}