<?php 
    $url = Ruta::ctrRuta();
?>


<hr>
<div class="container-fluid">

    <div class="container">

        <div class="container backColor" style="border-radius: 50px;">
            
            <h3 class="text-center" style="font-size: 30px;">INSTRUCTIONS</h3>

        </div>

        <div>
            
            <p style="font-size: 24px; margin: 10px; text-align:center;"><span style="color: 0070C0"><b>Dear Coachee.</b></span></p>

            <p style="font-size: 18px; margin: 10px;">Here is an instrument that consists of <b>28 items</b>
                                                     which can help you find the careers or occupations that best match your interests.
                                                     Most people have fun filling out this booklet as it helps them know more about themselves.
                                                     This instrument uses information about your interests, abilities, and career or occupation 
                                                     choices to select from a set of professions the one that best suits what is expressed. </p>

            <p style="font-size: 18px; margin: 10px;">The test consists of four fundamental parts: </p>

            <p style="font-size: 18px; margin-top: 30px; margin-left: 20px; margin-right: 10px; margin-bottom:01px"><span style="color: blue"><b>1.</b></span>Activities.</p>
            <p style="font-size: 18px; margin-top: 01px; margin-left: 20px; margin-right: 10px; margin-bottom:01px"><span style="color: blue"><b>2.</b></span>Skills.</p>
            <p style="font-size: 18px; margin-top: 01px; margin-left: 20px; margin-right: 10px; margin-bottom:01px"><span style="color: blue"><b>3.</b></span>Careers and occupations.</p>
            <p style="font-size: 18px; margin-top: 01px; margin-left: 20px; margin-right: 10px; margin-bottom:30px"><span style="color: blue"><b>4.</b></span>Self-Esteem.</p>

            <p style="font-size: 18px;  margin: 10px;">In the same way, within each part there is a set of specific 
                                                      letters that will correspond to the type of profession that is mentioned. 
                                                      The meaning of each one is shown below:</p> 

            <!--Tabla de items background-color:="gray" -->                                         
 
                <table border="3" cellspacing="10" cellpadding="10" style="margin: 0 auto;">
                 <tr> <th style="background-color:gray; text-align:center;">R</th> <th> Realistic</th> </tr>
                 <tr> <th style="background-color:gray; text-align:center;">I</th> <th> Investigation</th> </tr> 
                 <tr> <th style="background-color:gray; text-align:center;">A</th> <th> Artistic</th> </tr> 
                 <tr> <th style="background-color:gray; text-align:center;">S</th> <th> Social</th> </tr>    
                 <tr> <th style="background-color:gray; text-align:center;">E</th> <th> Entepeneurs</th> </tr> 
                 <tr> <th style="background-color:gray; text-align:center;">C</th> <th> Conventional</th> </tr> 
                </table>

            <!--Tabla de items -->
            
            <p style="font-size: 18px; margin: 10px;">When you are pleased with any of the following phrases,
                                                      tasks or statements, mark the answer <b> “YES”</b>  within the 
                                                      number corresponding to each item. If, on the contrary,
                                                      when you experience dislike of what the statement suggests, 
                                                      or when the phrases or tasks mentioned are not to your liking, 
                                                      then check the answer <b>“NO”</b> in the box corresponding to each item.</p> 
            
            <p style="font-size: 18px; margin: 10px;">Remember that you should not leave any affirmations without answering,
                                                      the most important thing is to be sincere and look for the results of your 
                                                      preference, and likewise, all the professions or activities shown below are important,
                                                      so you should evaluate those that you like.</p> 

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

                        <p style="font-size: 24px; margin:10px; text-align:center!important;"><span style="color:#0070C0;"><b>VOCATIONAL PREFERENCE INVENTORY</b></span></p>
                        <?php 

                            //Loads current page
                            $newpage = 0;
                            
                            if (!empty($_GET['page'])){
                                $newpage = $_GET['page'];
                                echo '<div id="overlay" style="text-align:center!important;"><div><img src="',$url,'vistas/img/loading.gif" width="32px" height="32px"/></div></div>';
                            }
                            
                            echo '<div id="vpi-pagination">loading...</div>';

                            echo '<input type="hidden" value="',$newpage,'" id="currentpage">';

                            //pagination controls 
                            echo '<div align="center">';

                                echo '<ul class ="pagination text-center" id="pagination">';
                                  echo'<li><input type="submit" id="prev-button" class="btn.active" name="but_prev" value="Previous"></li>';
                                  echo'<li><input type="submit" id="next-button" class="btn.active" name="but_next" value="Next"></li>';
                                echo '</ul>';

                            echo '</div>';
						    ?>

                </div>

                <!--=====================================
                LLAMADO AL CONTROLADOR
                ======================================-->

                <?php

                $registro = new ControladorRespuestas();
					      $registro -> ctrRespuestasvpi();
                    
                ?>

                <!--=====================================
                BOTON DE REGISTRO
                ======================================-->
   
                <input type="hidden" value="<?php echo $url; ?>" id="baseUrl">
                <script type="text/javascript" src="<?php echo $url?>vistas/js/plugins/jquery.min.js"></script>
                <script type="text/javascript" src="<?php echo $url;?>vistas/js/scroll.js"></script>         
                <script type="text/javascript" src="<?php echo $url;?>vistas/js/paginationvpi.js"></script>               
            </form>

        </div>
        
    </div>
        
</div>