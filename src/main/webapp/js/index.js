/**
 * 
 */
 
 $(document).ready(function(){
	
	$("#link1").click(function() {
	 	Ejemplo1();
	 });
	 
	$("#F2BtnSend").click(function() {
	 	Ejemplo2();
	});
	
	$("#F3BtnSend").click(function() {
	 	Ejemplo3();
	});

})

//Método que recarga en la capa con id="CapaEjemplo1" el resultado de la invocación a 
//la controladora ejemplo1Controller.
function Ejemplo1(){
 $("#CapaEjemplo1").load('./ejemplo1');
}




//Método que obtiene los datos del formulario F1 y envía los datos en una petición asíncrona ajax. La respuesta
//es una vista que se carga en la capa div con id="CapaEjemplo2".
/*
Estos son algunos de los atributos útiles de la función JQuery Ajax:

url : URL del servlet / recurso que se invocará.
method : Tipo de método HTTP como GET, POST, etc.
success : función de devolución de llamada en la finalización con éxito de la llamada AJAX.
error : función de devolución de llamada en caso de que se produzca algún error durante la llamada AJAX.
data : datos que se envían al enviar la solicitud.
dataType: Establece el tipo de información que se espera recibir como respuesta del servidor. Si no se especifica ningún valor, de forma predeterminada, jQuery revisa el tipo de MIME que posee la respuesta.
beforeSend : Pre-solicitud de función de devolución de llamada. devolver falso desde esta función cancelará la solicitud.
complete : Función de devolución de llamada, ejecutada después de finalizar la solicitud (con éxito o error).
contentType : Solicite el tipo de contenido como: application / x-www-form-urlencoded, multipart / form-data, o text / plain, etc.
headers : Solicitar encabezados.
timeout : Establezca un tiempo de espera para la solicitud. Valores en milisegundos.

Documentación del fabricante: https://api.jquery.com/jquery.ajax/
*/

function Ejemplo2(){

 //Se recogen los datos del formulario.
 var data_nombre = $('#F2nombre').val();
 var data_edad = $('#F2edad').val();

 //Se reinicia la capa donde se cargará la respuesta. El método html de jquery permite cargar html de forma dinámica en un contenedor.
 $('#CapaEjemplo2').html('');

 //Se invoca a la función ajax de jquery.
	$.ajax({
		url     : './ejemplo2',
        method  : 'POST',
        data    : {nombre:data_nombre, edad:data_edad},
	    success : function(resultText){
                    $('#CapaEjemplo2').html(resultText);
                  },
        error   : function(jqXHR, exception){
                    $('#CapaEjemplo2').html('<p>Ha ocurrido un error fatal.</p>');
                  }
    });
}

//Método que obtiene los datos del formulario F2 y envía los datos en una petición asíncrona ajax. La respuesta
//es un objeto JSON con el cual se aplica lógica en la cual se termina por modificar el DOM en lo relativo al contenido de la capa div con id="CapaEjemplo3". Note que
//con una respuetsa JSON se puede jugar a modificar cualquier zona del DOM de la vista principal propiciando vistas más interactivas y ligeras.
/*
Estos son algunos de los atributos útiles de la función JQuery Ajax:

url : URL del servlet / recurso que se invocará.
method : Tipo de método HTTP como GET, POST, etc.
success : función de devolución de llamada en la finalización con éxito de la llamada AJAX.
error : función de devolución de llamada en caso de que se produzca algún error durante la llamada AJAX.
data : datos que se envían al enviar la solicitud.
dataType: Establece el tipo de información que se espera recibir como respuesta del servidor. Si no se especifica ningún valor, de forma predeterminada, jQuery revisa el tipo de MIME que posee la respuesta.
beforeSend : Pre-solicitud de función de devolución de llamada. devolver falso desde esta función cancelará la solicitud.
complete : Función de devolución de llamada, ejecutada después de finalizar la solicitud (con éxito o error).
contentType : Solicite el tipo de contenido como: application / x-www-form-urlencoded, multipart / form-data, o text / plain, etc.
headers : Solicitar encabezados.
timeout : Establezca un tiempo de espera para la solicitud. Valores en milisegundos.

Documentación del fabricante: https://api.jquery.com/jquery.ajax/
*/

function Ejemplo3(){
 
 //Se recogen los datos del formulario.
 var data_organizacion = $('#F3organizacion').val();
 var data_cif = $('#F3cif').val();
 var data_antiguedad = $('#F3antiguedad').val();

 //Se reinicia la capa donde se cargará la respuesta. El método html de jquery permite cargar html de forma dinámica en un contenedor.
 $('#CapaEjemplo3').html('');

 //Se invoca a la función ajax de jquery.
	$.ajax({
		url     : './ejemplo3',
		dataType:"json",
        method  : 'POST',
        data    : {organizacion:data_organizacion, cif:data_cif, antiguedad:data_antiguedad},
	    success : function(data){
					var error=data.error;
                    var mensaje = data.mensaje;
                    
                    if(error=="true"){
        		         $('#CapaEjemplo3').html('<p>Error. '+mensaje+'</p>');
                    }else{
                         $('#CapaEjemplo3').html('<p>'+mensaje+'</p>');
                    }
                  },
        error   : function(jqXHR, exception){
                    $('#CapaEjemplo3').html('<p>Ha ocurrido un error fatal.</p>');
                  }
    });
}