alert("Estoy en Script");

$(document).ready(function(){
   // $("#soyDiv").hide();

   $("#ocultaP").click(function(){
      $("#soyP").hide();
   });
   $("#muestraP").click(function(){
      $("#soyP").show();
   });
   $("#showhidediv").click(function(){
      $("#soyDiv").toggle();
   });
   $("#fadeoutDiv").click(function(){
      $("#esDiv2").fadeOut();
      $("#esDiv3").fadeOut("slow");
      $("#esDiv4").fadeOut(3000);
   });
   $("#fadeinDiv").click(function(){
      $("#esDiv2").fadeIn();
      $("#esDiv3").fadeIn("slow");
      $("#esDiv4").fadeIn(3000);
   });
   $("#haches").click("mouseover", function(){
      $("h2,h4,h6").addClass("text-primary");
   });
});