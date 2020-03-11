<?php

    //this Class handles the pagination buttons as well as indicating
    //what is the current test page. 

    class PerPage{
        public $perpage;

        function __construct(){
            $this -> perpage = 1;
        }//__construct 

        function PrevNext($totalpages){
            $url = Ruta::ctrRuta();
            $output = "";
            if (!isset($_GET['page'])) $_GET['page'] = 0;//if there´s no current page we assign the first page

            
            /*
            if ($_GET['page']==1){
                $output = $output.'<span class="link disabled first">Previous</span>';
            }//if $_GET==1
            else {
                $output = $output.'<span class="link first" onclick="getResult(\''.$url.($_GET['page']-1).')">Previous</span>';
            }
            if ($_GET['page']<$totalpages){
                $output = $output.'<span class="link first" onclick="getResult(\''.$url.($_GET['page']+1).')">Next</span>';
            }
            else{
                $output = $output.'<span class="link disabled first">Next</span>';
            }

            return $output;
            */
        }//PrevNext

    }//Perpage

?>