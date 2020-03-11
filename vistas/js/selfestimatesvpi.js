jQuery (document).ready(function($){

    $("input").on("click", function(e){
        var BtnPressed = $(this).attr("alt");
        var WhereIsPresed = $(this).attr("value");
        console.log("btnPressed: "+BtnPressed+", Where is Pressed: "+WhereIsPresed);
    });

});