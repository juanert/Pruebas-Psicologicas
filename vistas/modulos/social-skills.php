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

                            $prueba= "Social Skills";
                            $test = NULL;
             				$questions = ControladorPlantilla::ctrQuestions($prueba);
                            $count = 0;
                            foreach ($questions as $key => $value) {
                                $test[$key] = json_decode($questions[$key]["options"],true);
                            }

							foreach ($questions as $key => $value) {

								echo'

									<div class="row" style="border-style: solid; border-color: #418efd; border-width: 3px;  margin: 20px; padding-top: 30px;">

                                    <div class="col-lg-1 col-md-1 col-sm-2 col-xs-2" style="margin-top: -15px; margin-left: 20px;">

										<p style="display: inline-flex;"><span style="border: solid 3px; border-color: #418efd; border-radius: 30px; margin: 0px; font-size: 30px; padding: 5px; ">'.$value["id"].'</span>

                                    </div>

                                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12" style="margin-bottom: 10px;">

                                    <span style="margin: 0px; font-size: 20px; color: #418efd">'.$value["questions"].'</span> 

                                    </div>

                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top: -10px; margin-bottom: 10px">

                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
											
    										<label style="margin-left: 90px;">

    						    				<input type="radio" id="A'.$value["id"].'" name="'.$value["id"].'" value="A," class="answer-extensive" required><p style="display: initial;">   '.$test[$key][0]["A"].'</p>

    						    			</label>

                                        </div>

                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
						    				
    										<label style="margin-left: 90px;">

    											<input type="radio" id="B'.$value["id"].'" name="'.$value["id"].'" value="B," class="answer-extensive" required><p style="display: initial;">   '.$test[$key][0]["B"].'</p>

    										</label>

                                        </div>

                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >

                                            <label style="margin-left: 90px;">

                                                <input type="radio" id="C'.$value["id"].'" name="'.$value["id"].'" value="C," class="answer-extensive" required><p style="display: initial;">   '.$test[$key][0]["C"].'</p>

                                            </label>

                                        </div>

                                    </div>
										
									</div>

								';
                                $count++;
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
					$registro -> ctrAnswer($count,$prueba);
                    
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