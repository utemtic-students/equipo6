function startPage(){
   $(".btnSiteType").click(function(){
     var site = $(".btnSiteType").text();
     
     $.ajax({
        url: "/turist/index/showSites",
        dataType: "JSON",
        timeout: 10000,
        
        error: function(){
          alert("error");
           //$("#respuesta").html("Error al intentar buscar el empleado. Por favor intente más tarde.");
        },
        success: function(res){
           if(res){
            alert(res);
             // $("#respuesta").html('<a href="/empleados/'+res.id+'"> '+res.nombre+' ' + res.apellido + ' </a>');
           }else{
            alert("");
              //$("#respuesta").html("El legajo no le pertenece a ningún empleado.");
           }
        }
     })
   });
};
$(document).ready(function(){
   startPage();
});
