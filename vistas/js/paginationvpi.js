jQuery (document).ready(function($){

    var base_url = $("#baseUrl").val(); 
    $ ("#vpi-pagination").load(base_url+"/vistas/modulos/vpipagination.php?page=0");
    $ ("#vpi-pagination").change(function(){
    $("#overlay").addClass("type","hidden");
    });//#overlay.hide()

    $("#pagination").on("click","input",function(e){

        e.preventDefault();
        var currentpage = parseInt($("#currentpage").val());
        var btnPressed = $(this).attr("value");
        //var selectedpage = $(this).attr("id");
        console.log("current page:"+currentpage+" btnpressed: "+btnPressed);
        console.log(base_url);

        if (btnPressed=="Previous" && currentpage>0){
            currentpage--;
            $("#vpi-pagination").html("loading...");
            $("#vpi-pagination").load(base_url+"/vistas/modulos/vpipagination.php?page="+currentpage);
            $("#currentpage").attr("value",currentpage);
        }//if Previous
        
        if (btnPressed=="Next" && currentpage<2){
            currentpage++;
            $("#vpi-pagination").html("loading...");
            $("#vpi-pagination").load(base_url+"/vistas/modulos/vpipagination.php?page="+currentpage);
            $("#currentpage").attr("value",currentpage);
        }//if Previous

    });//#pagination 

});