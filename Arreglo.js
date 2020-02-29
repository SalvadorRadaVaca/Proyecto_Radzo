var Nombres = [];

// En la función siguiente:
// El arreglo se hace estático, definiendo que solo tiene 10 posiciones de memoria
function asignar() {
  for (let i = 0; i < 10; i++) {
    Nombres[i] = "Nombre_" + i;
  }
}
// En las siguientes funciones:
// Se puede utilizar la propiedad "Nombres.length" porque ya tiene una longitud definida
function mostrar() {
  for (let i = 0; i < Nombres.length; i++) {
    console.log(Nombres[i]);
  }
}

function ponerNull() {
  for (let i = 0; i < Nombres.length; i += 2) {
    Nombres[i] = null;
  }
}

asignar();
mostrar();
console.log("\n\nAquí termina la muestra de todos los nombres\n\n");
ponerNull();
mostrar();
