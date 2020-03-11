<?php

$url = Ruta::ctrRuta();

?>

<!--=====================================
RESULTADO PARA LOS USUARIOS
======================================-->

<!--=====================================
BUSCADOR
======================================-->

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	
</div>
				
<div class="input-group col-lg-6 col-md-6 col-sm-6 col-xs-6" id="buscador">
					
	<input type="search" name="buscar" class="form-control" placeholder="Type your username/email">	

	<span class="input-group-btn">
						
		<a href="<?php echo $url; ?>results/1/recientes">

		<button class="btn btn-default backColor" type="submit">
								
			<i class="fa fa-search"></i>

		</button>

		</a>

	</span>

</div>

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
	
</div>

<br>

<!--=====================================
BARRA PRODUCTOS
======================================-->

<div class="container-fluid well well-sm barraProductos">

	<div class="container">
		
		<div class="row">

			<div class="col-sm-6 col-xs-12">
				

			</div>
			
			<div class="col-sm-6 col-xs-12 organizarProductos">

				<div class="btn-group pull-right">

					 <button type="button" class="btn btn-default btnGrid" id="btnGrid0">
					 	
						<i class="fa fa-th" aria-hidden="true"></i>  

						<span class="col-xs-0 pull-right"> GRID</span>

					 </button>

					 <button type="button" class="btn btn-default btnList" id="btnList0">
					 	
						<i class="fa fa-list" aria-hidden="true"></i> 

						<span class="col-xs-0 pull-right"> LIST</span>

					 </button>
					
				</div>		

			</div>

		</div>

	</div>

</div>

<!--=====================================
LISTAR PRODUCTOS
======================================-->

<div class="container-fluid productos">

	<div class="container">
		
		<div class="row">

			<!--=====================================
			BREADCRUMB O MIGAS DE PAN
			======================================-->

			<ul class="breadcrumb fondoBreadcrumb text-uppercase">
				
				<li><a href="<?php echo $url;  ?>">HOME</a></li>
				<li class="active pagActiva"><?php echo $rutas[0] ?></li>

			</ul>

			<?php

			/*=============================================
			LLAMADO DE PAGINACIÓN
			=============================================*/

			if(isset($rutas[1])){

				if(isset($rutas[2])){

					if($rutas[2] == "antiguos"){

						$modo = "ASC";
						$_SESSION["ordenar"] = "ASC";

					}else{

						$modo = "DESC";
						$_SESSION["ordenar"] = "DESC";

					}

				}else{

					$modo = $_SESSION["ordenar"];

				}

				$base = ($rutas[1] - 1)*12;
				$tope = 12;

			}else{

				$rutas[1] = 1;
				$base = 0;
				$tope = 12;
				$modo = "DESC";

			}

			/*=============================================
			LLAMADO DE PRODUCTOS POR BÚSQUEDA
			=============================================*/

			$productos = null;
			$listaProductos = null;
			$ordenar = "id";

			if(isset($rutas[3])){

				$busqueda = $rutas[3];
				$productos = ControladorRespuestas::ctrBuscarProductos($busqueda);
				$listaProductos = ControladorRespuestas::ctrListarProductosBusqueda($busqueda);
				$social = ControladorPlantilla::ctrEstiloPlantilla();

			}

			if(!$productos){

				echo "<div class='col-xs-12 error404 text-center'>

						 <h1><small>¡Oops!</small></h1>

						 <h2>No results</h2>

					</div>";

			}else{
	
				echo '

				<ul class="list0">';

				foreach ($productos as $key => $value) {

					echo '<li class="col-xs-12">
					  
				  		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
							   
							<figure>
									
								<img src="'.$url.$social["logo"].'" class="img-responsive">

							</figure>

					  	</div>  	
							  
						<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
							
							<h1>

								<small>

									usuario: '.$value["usuario"].'<br>';

									echo '

								</small>

							</h1>

							<p class="text-muted">tipo de prueba: '.$value["prueba"].'</p>';

							echo '<p class="text-muted">Resultado:</p>';

							if ($value["prueba"] == "Neuro-Linguistic Programming") {
								
								$respuesta = explode(",", $value["respuestas"]);
								$visual = 0;
								$auditivo = 0;
								$quinestesico = 0;
								$total = 0;

								foreach ($respuesta as $key => $valor2) {
									if ($valor2 == "V") {
										$visual++;
									}else if($valor2 == "A"){
										$auditivo++;
									}else if($valor2 == "Q"){
										$quinestesico++;
									}
									$total++;
								}

								$visual=($visual/$total)*100;
								$auditivo=($auditivo/$total)*100;
								$quinestesico=($quinestesico/$total)*100;

								echo'

								<p>Visual: '.number_format($visual, 2).'%
								Auditivo: '.number_format($auditivo, 2).'%
								Quinestesico: '.number_format($quinestesico, 2).'%</p>

								';

							}else if($value["prueba"] == "Living Diagnosis Of Interest Test"){

								

								echo '<p>Investigación teórica en el Campo de las Ciencias Físicas y Naturales ( Ciencias Puras): '.((substr_count($value["respuestas"], '01')/count(explode(",", $value["respuestas"])))*100).'</p>';

								echo '<p>Investigación teórica en el Campo de las Ciencias Humanas: '.substr_count($value["respuestas"], '02').'</p>';

								echo '<p>Servicio al Individuo: Cuerpo: '.substr_count($value["respuestas"], '03').'</p>';

								echo '<p>Servicio al Individuo: Espíritu: '.substr_count($value["respuestas"], '04').'</p>';

								echo '<p>Servicio a la Sociedad: '.substr_count($value["respuestas"], '05').'</p>';

								echo '<p>Desarrollada en Industrias, Fábricas, o Laboratorios: '.substr_count($value["respuestas"], '06').'</p>';

								echo '<p>Agraria: '.substr_count($value["respuestas"], '07').'</p>';

								echo '<p>Zoológica: '.substr_count($value["respuestas"], '08').'</p>';

								echo '<p>Diplomacia, Turismo,  Idiomas, Relaciones Públicas: '.substr_count($value["respuestas"], '09').'</p>';

								echo '<p>Milicia: Deportes: '.substr_count($value["respuestas"], '10').'</p>';

								echo '<p>Alta economía: Banca: '.substr_count($value["respuestas"], '11').'</p>';

								echo '<p>Comercio, Negocios: '.substr_count($value["respuestas"], '12').'</p>';

								echo '<p>Administrativas y de Oficina: '.substr_count($value["respuestas"], '13').'</p>';

								echo '<p>Desarrolladas en estudies o talleres (Artes Plásticas): '.substr_count($value["respuestas"], '14').'</p>';

								echo '<p>Musical:  Composición: '.substr_count($value["respuestas"], '15').'</p>';

								echo '<p>Ejecución Instrumental: '.substr_count($value["respuestas"], '16').'</p>';

								echo '<p> Literaria: Composición: '.substr_count($value["respuestas"], '17').'</p>';

								echo '<p> Literaria: Realización, representación: '.substr_count($value["respuestas"], '18').'</p>';

							}

							echo'

							</div>

						</div>

						<div class="col-xs-12"><hr></div>

					</li>';

				}

				echo '</ul>';
			}

			?>

			<div class="clearfix"></div>

			<center>

			<!--=====================================
			PAGINACIÓN
			======================================-->
			
			<?php

				if(count($listaProductos) != 0){

					$pagProductos = ceil(count($listaProductos)/12);

					if($pagProductos > 4){

						/*=============================================
						LOS BOTONES DE LAS PRIMERAS 4 PÁGINAS Y LA ÚLTIMA PÁG
						=============================================*/

						if($rutas[1] == 1){

							echo '<ul class="pagination">';
							
							for($i = 1; $i <= 4; $i ++){

								echo '<li id="item'.$i.'"><a href="'.$url.$rutas[0].'/'.$i.'/'.$rutas[2].'/'.$rutas[3].'">'.$i.'</a></li>';

							}

							echo ' <li class="disabled"><a>...</a></li>
								   <li id="item'.$pagProductos.'"><a href="'.$url.$rutas[0].'/'.$pagProductos.'/'.$rutas[2].'/'.$rutas[3].'">'.$pagProductos.'</a></li>
								   <li><a href="'.$url.$rutas[0].'/2/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

							</ul>';

						}

						/*=============================================
						LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ABAJO
						=============================================*/

						else if($rutas[1] != $pagProductos && 
							    $rutas[1] != 1 &&
							    $rutas[1] <  ($pagProductos/2) &&
							    $rutas[1] < ($pagProductos-3)
							    ){

								$numPagActual = $rutas[1];

								echo '<ul class="pagination">
									  <li><a href="'.$url.$rutas[0].'/'.($numPagActual-1).'/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> ';
							
								for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

									echo '<li id="item'.$i.'"><a href="'.$url.$rutas[0].'/'.$i.'/'.$rutas[2].'/'.$rutas[3].'">'.$i.'</a></li>';

								}

								echo ' <li class="disabled"><a>...</a></li>
									   <li id="item'.$pagProductos.'"><a href="'.$url.$rutas[0].'/'.$pagProductos.'/'.$rutas[2].'/'.$rutas[3].'">'.$pagProductos.'</a></li>
									   <li><a href="'.$url.$rutas[0].'/'.($numPagActual+1).'/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>

								</ul>';

						}

						/*=============================================
						LOS BOTONES DE LA MITAD DE PÁGINAS HACIA ARRIBA
						=============================================*/

						else if($rutas[1] != $pagProductos && 
							    $rutas[1] != 1 &&
							    $rutas[1] >=  ($pagProductos/2) &&
							    $rutas[1] < ($pagProductos-3)
							    ){

								$numPagActual = $rutas[1];
							
								echo '<ul class="pagination">
								   <li><a href="'.$url.$rutas[0].'/'.($numPagActual-1).'/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
								   <li id="item1"><a href="'.$url.$rutas[0].'/1/'.$rutas[2].'/'.$rutas[3].'">1</a></li>
								   <li class="disabled"><a>...</a></li>
								';
							
								for($i = $numPagActual; $i <= ($numPagActual+3); $i ++){

									echo '<li id="item'.$i.'"><a href="'.$url.$rutas[0].'/'.$i.'/'.$rutas[2].'/'.$rutas[3].'">'.$i.'</a></li>';

								}


								echo '  <li><a href="'.$url.$rutas[0].'/'.($numPagActual+1).'/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
									</ul>';
						}

						/*=============================================
						LOS BOTONES DE LAS ÚLTIMAS 4 PÁGINAS Y LA PRIMERA PÁG
						=============================================*/

						else{

							$numPagActual = $rutas[1];

							echo '<ul class="pagination">
								   <li><a href="'.$url.$rutas[0].'/'.($numPagActual-1).'/'.$rutas[2].'/'.$rutas[3].'"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li> 
								   <li id="item1"><a href="'.$url.$rutas[0].'/1/'.$rutas[2].'/'.$rutas[3].'">1</a></li>
								   <li class="disabled"><a>...</a></li>
								';
							
							for($i = ($pagProductos-3); $i <= $pagProductos; $i ++){

								echo '<li id="item'.$i.'"><a href="'.$url.$rutas[0].'/'.$i.'/'.$rutas[2].'/'.$rutas[3].'">'.$i.'</a></li>';

							}

							echo ' </ul>';

						}

					}else{

						echo '<ul class="pagination">';
						
						for($i = 1; $i <= $pagProductos; $i ++){

							echo '<li id="item'.$i.'"><a href="'.$url.$rutas[0].'/'.$i.'/'.$rutas[2].'/'.$rutas[3].'">'.$i.'</a></li>';

						}

						echo '</ul>';

					}

				}

			?>

			</center>

</div>

</div>

</div>

