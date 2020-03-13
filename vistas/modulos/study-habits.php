<?php 

    $url = Ruta::ctrRuta();

?>


<!--=====================================
FORMULARIO DE REGISTRO PARA PROYECTOS
======================================-->

<hr>

<div class="container-fluid">

    <div class="container">

        <div class="container backColor" style="border-radius: 50px;">
            
            <h3 class="text-center" style="font-size: 30px;">Module 2</h3>

        </div>

        <div>
            
            <p style="font-size: 18px; margin: 10px;"> <span style="color: blue">Dear Coachee</span>, here is an instrument that consists of 23 Affirmations which will allow you to detect those study habits that are most associated with you</p>

        </div>

        <hr>

        <form method="post">

                <!--=====================================
                TITULO DEL PROYECTO
                ======================================-->
                
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <div class="form-group">
                    
                    <div class="input-group">

                        <span class="input-group-addon">
                            
                            <i class="glyphicon glyphicon-user"></i>
                        
                        </span>

                        <input type="text" class="form-control text-uppercase" id="regUser" name="regUser" placeholder="User or email" required>

                    </div>

                </div>

                

                <div class="form-group">
                    
                    <div class="input-group">
                       
                        <?php 

             				$preguntas = ControladorPlantilla::ctrStQuestions();

							foreach ($preguntas as $key => $value) {

								echo'

									<div class="row" style="border-style: solid; border-color: #418efd; border-width: 3px;  margin: 20px; padding-top: 30px;">

                                    <div class="col-lg-1 col-md-1 col-sm-2 col-xs-2" style="margin-top: -15px; margin-left: 20px;">

										<p style="display: inline-flex;"><span style="border: solid 3px; border-color: #418efd; border-radius: 30px; margin: 0px; font-size: 30px; padding: 5px; ">'.$value["id"].'</span>

                                    </div>

                                    <div class="col-lg-9 col-md-9 col-sm-8 col-xs-9" style="    margin-bottom: 15px; margin-top: -15px;">

                                    <span style="margin: 0px; font-size: 20px;">'.$value["pregunta"].'</span> 

                                    </div>

                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" style="display: contents;">
											
										<label style="margin: 10px;">

						    				<input type="radio" id="YES'.$value["id"].'" name="'.$value["id"].'" value="YES," class="answer" required>Yes

						    			</label>
						    				
										<label style="margin: 10px;">

											<input type="radio" id="NO'.$value["id"].'" name="'.$value["id"].'" value="NO," class="answer" required>No

										</label>

                                    </div>
										
									</div>

								';

							}

						 ?>

                    </div> 

                </div>

                </div>

                <!--=====================================
                LLAMADO AL CONTROLADOR
                ======================================-->

                <?php

                    $registro = new ControladorRespuestas();
					$registro -> ctrStRespuestas();
                    
                ?>

                <!--=====================================
                BOTON DE REGISTRO
                ======================================-->

                <input type="submit" class="btn btn-default backColor btn-block btnRegistro" value="REGISTRAR">
                
                <hr>

            </form>

        </div>
        
    </div>
    
</div>