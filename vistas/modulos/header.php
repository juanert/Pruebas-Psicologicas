<?php

$url = Ruta::ctrRuta();

?>

<!--=====================================
TOP
======================================-->

<div class="container-fluid barraSuperior" id="top">
	
	<div class="container">
		
		<div class="row">
	
			<!--=====================================
			SOCIAL
			======================================-->

			<div class="col-lg-7 col-md-7 col-sm-5 col-xs-12 social">
				
				<ul>	

					<?php

					$social = ControladorPlantilla::ctrEstiloPlantilla();

					$jsonRedesSociales = json_decode($social["redesSociales"],true);		

					foreach ($jsonRedesSociales as $key => $value) {

						echo '<li>
								<a href="'.$value["url"].'" target="_blank">
									<i class="fa '.$value["red"].' redSocial '.$value["estilo"].'" aria-hidden="true"></i>
								</a>
							</li>';
					}

					?>
			
				</ul>

			</div>

			<!--=====================================
			REGISTRO
			======================================-->

			<div class="col-lg-5 col-md-5 col-sm-7 col-xs-12 registro">
				
				<ul>

					<?php

					echo'
					
					<li><a href="'.$url.'results">Results</a></li>

					';

					?>

				</ul>

			</div>	

		</div>	

	</div>

</div>

<!--=====================================
HEADER
======================================-->

<header class="container-fluid">
	
	<div class="container">
		
		<div class="row" id="cabezote">

			<!--=====================================
			LOGOTIPO
			======================================-->

			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">

			</div>
			
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" id="logotipo">
				
				<a href="#">
						
					<img style="margin-left: auto; margin-right: auto; width: 50%;" src="<?php echo $url.$social["logo"]; ?>" class="img-responsive">

				</a>
				
			</div>

			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
				
			</div>

		</div>

	</div>

</header>


