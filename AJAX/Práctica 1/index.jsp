<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <meta http-equiv="X-UA-Compatible" content="ie=edge" />
   <!-- Bootstrap css -->
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <!-- Google fonts -->
   <link href="https://fonts.googleapis.com/css?family=Arvo&display=swap" rel="stylesheet">
   <title>Hola jQuery</title>
</head>

<body>
   <h1 class="bg-primary p-3 text-center text-white mx-auto col-6 rounded mt-5">Hola jQuery</h1>

   <div class="d-flex mx-auto col-6 justify-content-center p-1">
      <p id="soyP" name="soyP" class="text-center col-6 border border-secondary col-6 rounded h-50 p-2 mx-1">Hola, estoy en P</p>
      <div id="soyDiv" name="soyDiv" class="text-center col-6 border border-secondary col-6 rounded h-50 p-2 mx-1">Hola, estoy Div</div>
   </div>

   <div class="d-flex mx-auto col-6 justify-content-center p-1">
      <input class="btn btn-outline-primary rounded col-6 mx-1" type="button" name="ocultaP" id="ocultaP" value="Ocultar P">
      <input class="btn btn-outline-primary rounded col-6 mx-1" type="button" name="muestraP" id="muestraP" value="Mostrar P">
   </div>

   <div class="col-6 mx-auto mt-2">
      <input class="btn btn-outline-primary rounded col-12 mx-auto" type="button" name="showhidediv"  id="showhidediv" value="Mostrar u ocultar Div">
   </div>

   <!-- Divs -->
   <div class="col-6 mx-auto my-2 border border-secondary rounded h-50">
      <!-- Single Div -->
      <div class="text-center border border-secondary rounded p-2 my-1" id="esDiv2" name="esDiv2">
         Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium, vero.
      </div>
      <!-- End of Single Div -->
      <!-- Single Div -->
      <div class="text-center border border-secondary rounded p-2 my-1" id="esDiv3" name="esDiv3">
         Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, recusandae!
      </div>
      <!-- End of Single Div -->
      <!-- Single Div -->
      <div class="text-center border border-secondary rounded p-2 my-1" id="esDiv4" name="esDiv4">
         Lorem ipsum, dolor sit amet consectetur adipisicing elit. Distinctio, at.
      </div>
      <!-- End of Single Div -->
   </div>
   <!-- End of divs -->

   <!-- Fade buttons -->
   <div class="d-flex mx-auto col-6 justify-content-center p-1">
      <input class="btn btn-outline-primary rounded col-6 mx-1" type="button" name="fadeoutDiv" id="fadeoutDiv" value="Fade div out">
      <input class="btn btn-outline-primary rounded col-6 mx-1" type="button" name="fadeinDiv" id="fadeinDiv" value="Fade div in">
   </div>
   <!-- End of fade buttons -->
   
   <h2>Yo soy el hache 2</h2>
   <h3>Yo soy el hache 3</h3>
   <h4>Yo soy el hache 4</h4>
   <h5>Yo soy el hache 5</h5>
   <h6>Yo soy el hache 6</h6>

   <input type="button" name="haches" value="Haches" id="haches">


   <!-- jQuery -->
   <script src="./js/jquery-3.4.1.min.js"></script>
   <!-- Script -->
   <script type="text/javascript" src="./js/script.js"></script>
</body>

</html>