window.addEventListener("load", function() {
   var query = window.location.search.substring(1);
   var separatorDates = query.split("&");
   var arrayDatos = [];
   var cadenaTemp;
   var result = "";
   var tagResult = document.getElementById('resultado');
   for (var i = 0; i < separatorDates.length; i++) {
      cadenaTemp = separatorDates[i].toString().split("=");
      arrayDatos[i] = cadenaTemp[1];
   }
   for (var f = 0; f < 2; f++) {
      result += " " + arrayDatos[f];
   }
   tagResult.textContent = result;
});

function DrawLine(){
   // Gets the element and its context
   var canvas = document.getElementById('CanvasChido');
   var context = canvas.getContext('2d');
   // To draw a line we start by moving to the start 
   // point, and then draw using lineTo() method
   context.beginPath();
   context.moveTo(20, 20);
   context.lineTo(280, 150);
   // Draw the line 
   context.stroke();
   context.closePath();
}
DrawLine();

