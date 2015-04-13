//Matriz de 3x3
var matriz = new Array(3);// arreglo con 3 espacios
for (var i = 0; i < matriz.length; i++) {
	matriz[i] = new Array(3);// para cada arreglo se agregan 3 espacios más
}
var esNumero;
// método: "validarEntrada" Solo permite ingresar numeros.
// página de refererncia
// http://www.lawebdelprogramador.com/foros/JavaScript/1127366-javascript-solo-numeros-para-siempre.html
function validarEntrada(evt,i,j, elemento) {
	esNumero=false;
	var key = (document.all) ? evt.keyCode : evt.which;
	
	if (key==8){
		almacenar(i,j,0);
	}else if (elemento.value.length >= 1) {// el largo de la entrada no puede ser mayor a 1
		return false;
	} else if (key >= 49 && key <= 57) {// solo números entre 1 y 9
		esNumero=true;
		return true;
	} else {
		return false;
	}
}

function capturarEntrada(i, j, valor) {//
	var dato = valor.value

	if ((estaRepetido(dato) == false)&&(esNumero==true)) {// si el numero no se había ingresado hasta el momento
		almacenar(i, j, dato);// se almacena en la matriz
	} else { // de lo contrario...(se había ingresado antes)
		valor.value = "";// se borra y no se almacena
	}
}

function almacenar(indiceI, indiceJ, dato) {
	matriz[indiceI][indiceJ] = dato; // se guarda en la matriz
}

function estaRepetido(dato) {// comprobar que el número ingresado no esté repetido dentro de la matriz
	var repetido = false;
	for (var i = 0; i < matriz.length; i++) {
		for (var j = 0; j < matriz[i].length; j++) {
			if (matriz[i][j] == dato) {// se recorre toda la matriz buscando el número
				repetido=true;
			}
		}
	}
	return repetido;
}