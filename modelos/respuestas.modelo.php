<?php

require_once "conexion.php";

class ModeloRespuestas{

	/*=============================================
	REGISTRO DE RESPUESTAS
	=============================================*/

	static public function mdlRespuestas($tabla, $respuestas, $usuario, $prueba){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(respuestas, usuario, prueba) VALUES (:respuestas, :usuario, :prueba)");

		$stmt->bindParam(":respuestas", $respuestas, PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $usuario, PDO::PARAM_STR);
		$stmt->bindParam(":prueba", $prueba, PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	BUSCADOR
	=============================================*/

	static public function mdlBuscarProductos($tabla, $busqueda){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE usuario like '%$busqueda%' ");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	LISTAR PRODUCTOS
	=============================================*/

	static public function mdlListarProductosBusqueda($tabla, $busqueda){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE usuario like '%$busqueda%' ");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}

}