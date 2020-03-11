<?php 

        //lincludes the classes in "plantilla.controllador .php";
        //document_root is used because the jQuery loads this in
        //local path mode instead of using the relative pat

        $page = 3;
        if (!empty($_GET['page'])){
            $page = $_GET['page'];
        }

        $imagelink = "vistas/img/";
        
        $imagelist = array("image7.png","image6.png","image5.png",
                           "image4.png","image3.png","image2.png",
                           "image1.png");
        $imagealt = array("7","6","5","4","3","2","1");

        $profesionTitles = array("Mechanical Ability","Scientific skill","Artistic Ability",
                                 "Pedagogical ability","Sales Skill","Office Skills");

        $professiondesc = array("(compose things, use tools, and machines)",
                                "(biology, science, experiments)",
                                "(music, art, writing, theater)",  
                                "(helping others to learn)",
                                "(sell or supervise other sellers)",
                                "(archive papers, spelling, add numbers)"); 

       echo'<div class="container-fluid">';

        echo '<div class="container">';

                echo "<div class='c46'>";
                    echo '<div> <p class=""><span class=""></span></p></div>
                            <p class="" id="h.gjdgxs"> <span class=""></span></p>
                            <p class=""><span class="c14 c57"></span></p>
                            <a id="t.e5f2ef7fbaf8d3b69464e91ed56c830179925904"></a>
                            <a id="t.0"></a>';
                echo "</div'>";
                
                echo'<table class="">
                    <tbody>
                            <tr class=""><td class="" colspan="1" rowspan="1"><ol class="c18 lst-kix_list_2-0 start" start="4">
                            <li class=""><span class="">SELF-ESTIMATES</span></li></ol></td></tr>
                    </tbody>
                    </table>';

                echo "</div'>";
                echo '<p class="">
                        <span class=""></span>
                        </p>
                        <a id="t.8d802859c5fca41a59b1ae0acf18b0365c9e67ca"></a>
                        <a id="t.1"></a>
                        <table class="">
                            <tbody>
                                <tr class="">
                                    <td class="" colspan="1" rowspan="1">
                                        <p class="">
                                            <span class="">
                                                On the following scale from 1 to 7, rank yourself in each of the following capacities according to what you really think it is, compared to other people of the same age. Give the most accurate estimate of how you consider yourself.
                                            </span>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="">
                        <span class=""></span>
                        </p>
                        <a id="t.45623e5bef7fd309f1b2e39e35077096fafd734b"></a>
                    <a id="t.2"></a>';

                echo '<p class="">
                        <span class=""></span>
                        </p>
                        <a id="t.45623e5bef7fd309f1b2e39e35077096fafd734b"></a>
                        <a id="t.2"></a>
                        <table class="">
                            <tbody>
                                <tr class="">
                                    <td class="" colspan="1" rowspan="1">
                                        <p class="">
                                            <span class="">
                                                Mark the corresponding
                                            </span>
                                            <span>
                                                &nbsp;
                                            </span>
                                            <span class="">
                                                number according to your perception, but avoid rating yourself in the same way for each skill.
                                            </span>
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>';
            echo '<p class="">
                    <span class=""></span>
                 </p>';
            echo '<a id="t.32a5a24b31fac232983df9d07c2dae24fc379ac3"></a>
                  <a id="t.3"></a>';
            echo '<table class="">
                    <tbody>
                    <tr class="">
                        <td class="" colspan="1" rowspan="1">
                            <p class="">
                                <span class=""></span>
                            </p>
                        </td>';

                        /*==========================================================
                        ---------------Inicio de For para descripciones-------------
                        ============================================================*/
                        $rowcount=0;
                        foreach ($profesionTitles as $key => $tituloprofesion){
                           echo '<td class="" colspan="1" rowspan="1">';
                           echo '<p class="">';
                             echo' <span class="">'.$tituloprofesion.'</span>';
                             echo '<span class="">'.$professiondesc[$rowcount].'</span>';
                          echo   '</p>';
                          echo  '</td>';
                          $rowcount=$rowcount+1;
                        }
                   echo'</tr>';
                    /*============================================================
                    ----------------For para seleccion de 7 a 1-------------------
                    ==============================================================*/
                        $rowcount=0;
                        foreach($imagelist as $key){
                            echo'<tr class="">';
                            echo '<td class="" colspan="1" rowspan="1">
                                    <p class="">
                                        <span class=""></span>
                                    </p>
                                    </td>';
                                    for ($countcolumn=0; $countcolumn<6; $countcolumn++){
                                         echo  '<td class="" colspan="1" rowspan="1">
                                                    <p class="c0">
                                                        <span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 23.00px; height: 24.00px;">
                                                            <input type="image" alt="'.$imagealt[$rowcount].'" src="'.$imagelink.$key.'" style="width: 39.16px; height: 32.47px; margin-left: -7.87px; margin-top: -7.26px; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px);"
                                                            title="column, number" value="'.$countcolumn.','.$imagealt[$rowcount].' id="choicebtn"/>
                                                        </span>
                                                    </p>
                                                </td>';
                                        }// rows
                            $rowcount=$rowcount+1;
                            echo'</tr>';
                        };//columns
                echo' </tbody>';
            echo '</table>';
        echo "</div'>";
        echo "</div'>"; 

    echo '<script type="text/javascript" src="'.$url.'vistas/js/selfestimatesvpi.js"></script> ';
?>
