
$(document).ready(function(){
    $("#collapse").click(function(e){
        $("#sidebar").toggle( "slide" );
        $("#mainContent").toggleClass("col-md-12");
        e.preventDefault();
      });
    
});