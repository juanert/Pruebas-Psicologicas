<!--=====================================
NEURO-LINGUISTIC TEST
======================================-->

<hr>

<div class="container-fluid">

    <div class="container">

        <div class="container backColor" style="border-radius: 50px;">
            
            <h3 class="text-center" style="font-size: 30px;">Neuro-Linguistic Programming</h3>

        </div>

        <br>

        <div>
            <p style="font-size: 18px; margin: 10px;">Directions: This instrument consist of ten sets of reagents. Each reagent includes lists (games) of words. For each reagent choose of the letter (A,B or C) that is easier to read. Don't focus on the meaning of the words.</p>
        </div>

        <hr>

        <form method="post" action="">       
                
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container">


                <div class="form-group">
                    
                    <div class="input-group">

                        <span class="input-group-addon">
                            
                            <i class="glyphicon glyphicon-user"></i>
                        
                        </span>

                        <input type="text" class="form-control text-uppercase" id="regUser" name="regUser" placeholder="User or email" required>

                    </div>

                </div>

                <br>


                <?php

                    /*=====================================
                    SE LLAMA AL CONTROLADOR Y SE LLENA UN ARRAY CON JSON
                    ======================================*/

                    $respuesta = ControladorPlantilla::ctrNplNumeracion();
  
                    $preguntas = ControladorPlantilla::ctrNplPreguntas();

                    for ($llenarArray=0; $llenarArray <15 ; $llenarArray++) { 
                        $json[$llenarArray] = json_decode($preguntas[$llenarArray]["texto"],true);
                    }

                    /*=====================================
                    CONTADOR DE ELEMENTOS
                    ======================================*/

                    $prueba = "Neuro-Linguistic Programming"
                    $contador = 0;
                    $ContadorCuadrilla = 1;
                    $eleccion= 1;
                    $count= 0;

                    /*=====================================
                    PREGUNTAS
                    ======================================*/

                    for ($NumPregunta=1; $NumPregunta <= 5 ; $NumPregunta++){

                        echo'

                        

                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"> 

                                <p style="display: inline-flex;"><span style="border: solid 3px; border-color: #418efd; border-radius: 30px; margin: 0 20px; font-size: 30px; padding: 5px; ">'.$NumPregunta.'</span></p>

                            </div>

                        ';

                        echo'

                            <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11"> 

                                ';

                                for ($cuadrilla=0; $cuadrilla < 3; $cuadrilla++) {

                                    $valorA= $respuesta[$cuadrilla]["A"];
                                    $valorB= $respuesta[$cuadrilla]["B"];
                                    $valorC= $respuesta[$cuadrilla]["C"];
                                    
                                    echo'
                                    
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

                                        <p style="display: inline-flex;"><span style="border: solid 3px; border-color: #418efd; border-radius: 30px; margin: 0 15px; font-size: 30px; padding: 5px; ">';    
                                        
                                        if ($cuadrilla==0) {

                                            echo'A</span></p>
                                            <input type="radio" name="'.$NumPregunta.'" value="'.$respuesta[$ContadorValor]["A"].'" required>';
                                            $eleccion++;

                                        }elseif ($cuadrilla==1) {

                                            echo'B</span></p>
                                            <input type="radio" name="'.$NumPregunta.'" value="'.$respuesta[$ContadorValor]["B"].'" required>';
                                            $eleccion++;

                                        }elseif ($cuadrilla==2) {

                                            echo'C</span></p>
                                            <input type="radio" name="'.$NumPregunta.'" value="'.$respuesta[$ContadorValor]["C"].'" required>';
                                            $eleccion++;

                                        }

                                        echo'

                                   </div>


                                   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="font-size: 18px;">

                                   '; 

                                        for ($tabla=$contador; $tabla < 15; $tabla++) {                           
                                            for ($elemento=1; $elemento < 4; $elemento++) {

                                            echo' 
                                            
                                            <p>'.$json[$tabla][0][$elemento].'</p>

                                            ';

                                            }

                                            $contador++;

                                            break;

                                        }

                                        

                                    echo'
                                        <br>

                                   </div>

                               </div>

                                    ';

                                }

                        echo'           

                                </div>

                                <hr>
                            ';

                        $count++;

                    }

                ?>
                
            </div>

            <?php

                /*=====================================
                LLAMADO AL CONTROLADOR
                ======================================*/

                $registro = new ControladorRespuestas();
				$registro -> ctrAnswer($count,$prueba);
                
            ?>

            <!--=====================================
            FORM BUTTON
            ======================================-->

            <input type="submit" class="btn btn-default backColor btn-block btnRegistro" id="send" value="REGISTER">

            <br>


        </form>
        
    </div>
    
</div>