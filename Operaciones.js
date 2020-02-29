// function suma(a,b){
//    var c = a + b;
//    return c;
// }

// function mult(a, b){
//    var c = a * b;
//    return c;
// }

// console.log(mult(suma(8,2),3));

// function suma(){
//    var res = 0;
//    for (let i = 0; i < arguments.length; i++) {
//       res += arguments[i];
//    }
//    return res;
// }

// function concatenar() {
//    var final = '';
//    for (let i = 0; i < arguments.length; i++) {
//       final += " " + arguments[i];
//    }
//    return final;
// }

// console.log(concatenar('Hola', 'mundo', 'y', 'Gris'));

// function calculator(n, o){
//    var r = n.replace(/,/g , o)
//    console.log(r);
//    var s = []
//    var j = 0;
//    s[0] = n [0];
//    for (let i = 0; i < n.length; i++) {
//       if (n[i]==","){
//          s[j] = n[i + 1]
//          console.log(s[j]);
//          j++;
//       }
//    }
// }

function calculator(n, o) {
   var s = [];
   s = n.split(",");
   var r = 0;

   switch(o){
      case '+':
         r = parseInt(s[0], 10);
         for (let i = 1; i < s.length; i++) {
            r += parseInt(s[i], 10);
         }
         console.log(r);
         break;
      case '-':
         r = parseInt(s[0], 10);
         for (let i = 1; i < s.length; i++) {
            r -= parseFloat(s[i], 10);
         }
         console.log(r);
         break;
      case '/':
         r = parseInt(s[0], 10);
         for (let i = 1; i < s.length; i++) {
            r /= parseFloat(s[i], 10);
         }
         console.log(r);
         break;
      case '*':
         r = parseInt(s[0], 10);
         for (let i = 1; i < s.length; i++) {
            r *= parseFloat(s[i], 10);
         }
         console.log(r);
         break;
      default:
         console.log("  Elige un caracter válido");
         break;
   }

}

calculator("5,2,3", "+");
calculator("5,2,3", "-");
calculator("-5,0,3", "/");
calculator("5,2,3", "*");

var date = new Date(Date.now()).toString();

console.log(date);
