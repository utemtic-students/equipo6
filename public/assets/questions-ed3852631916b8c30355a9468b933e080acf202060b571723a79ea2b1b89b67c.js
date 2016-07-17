$(document).ready(function(){

//Obtencion del div para obtener stylos de la libreria noUiSlider
var keypressSlider = document.getElementById('keypress');
//Input donde se estara visualizando el valor que tiene el objeto noUiSalider
var input = document.getElementById('input-with-keypress');

noUiSlider.create(keypressSlider, {
	start: 18, //valor inicial
	step: 1, //intervalo en el que se estara cambiando el resultado 
	range: { 
		'min': [   16 ],
		'max': [ 100 ]
	}
});

keypressSlider.noUiSlider.on('update', function( values, handle ) {
	input.value = parseInt(values[handle]);
});

//input.addEventListener('change', function(){
//	keypressSlider.noUiSlider.set([null, this.value]);
//});

//Boton de 18 años
//document.getElementById('write-button').addEventListener('click', function(){
//	keypress.noUiSlider.set( 18 );
// });

//Obtener valor del input 
//var valueInput = document.getElementById('input-with-keypress');
//var saveValueInput = valueInput.val().trim();

//ocultando div id = "question2"
$('#question2').hide();
$('#btn-sendRequest').click(function (e) {

  e.preventDefault();
  var inputsetRequest = $('#input-with-keypress');
  var answer1 = parseInt($(inputsetRequest).val());
  console.log(answer1);
 //bloque para enviar parametros
  if(answer1 => 18.00){
	 var emptyValue = document.getElementById('empty');
	 var question2 = document.getElementById('question2');
	 emptyValue.remove();
	 $('#question2').toggle();
	}if(answer1 < 18.00){
  	alert("Eres menor");
  }
 });
});
