<?php 

        //lincludes the classes in "plantilla.controllador .php";
        //document_root is used because the jQuery loads this in
        //local path mode instead of using the relative path

        $docroot =  $_SERVER['DOCUMENT_ROOT'];
        include ($docroot."/frontend/controladores/plantilla.controlador.php");

       $page = 0;
       if (!empty($_GET['page'])){
           $page = $_GET['page'];
       }

        $listapreguntas = array("A","B","O");    
        $titlepreguntas = array(" 1.Activities","2.Abilities","3.Ocupations");                                 
        $listprof = array("R","I","A","S","E","C");
   
        //prints the current question 
        echo "<p>".$titlepreguntas[$page]."</p>";

        //Prints the list of questions for each profession type 
        foreach ($listprof as $key => $currentprof){

            echo("<p>".$currentprof."</p>");//prints current proffession (add html + css)
            $preguntas = ControladorPlantilla::ctrPreguntasvpi($listapreguntas[$page],$currentprof);

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
    
                                    <input type="radio" id="YES'.$value["id"].'" name="'.$value["id"].'" value="'.$value["listprof"].'" class="answer" required>Yes
    
                                </label>
                                
                                <label style="margin: 10px;">
    
                                    <input type="radio" id="NO'.$value["id"].'" name="'.$value["id"].'" value="0," class="answer" required>No
    
                                </label>
                                
                        </p>
    
                    </div>
                        
                    </div>
    
                ';
    
            }//foreach preguntas


        }//foreach listprof 

       
        if ($page==2){
         echo ' <input type="submit" class="btn btn-default backColor btn-block btnRegistro" value="REGISTRAR" style="margin:10px">';
        }
                          
?>