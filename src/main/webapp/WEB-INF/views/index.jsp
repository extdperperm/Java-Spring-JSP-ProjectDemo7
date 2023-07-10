<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 7</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos estáticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma estática, pero si cambia en las controladoras la ubicación lógica y relativas mapeadas, podrían producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<!-- Se cargan los estilos particulares de la vista -->
<link rel="stylesheet" href="./styles/index.css">

<!-- Carga de estilos UI JQUERY -->
<link type="text/css" href="./jqueryUI/jquery-ui-1.13.0/jquery-ui.min.css" rel="stylesheet" />
<!-- Carga de jquery -->
<!-- Carga de la librería base de jquery -->
<script src="./jqueryUI/jquery-3.6.0.min.js"></script>
<!-- Carga de la librería ui de jquery -->
<script src="./jqueryUI/jquery-ui-1.13.0/jquery-ui.min.js"></script>

<!-- Carga de los js relativos a la vista -->
<script src="./js/index.js"></script>

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 7</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>C</b>onfiguración de JDBC.</p>
                              						<p class="objetivos">- <b>C</b>reación de una capa de conexión.</p>   
                              						<p class="objetivos">- <b>C</b>reación de una capa de datos (DAO).</p>
                              						<p class="objetivos">- <b>C</b>onocer la operativa básica con la base de datos.</p>      
                              </div>        
                            
            </div>
            <!-- Se muestran las propiedades del proyecto, pero esta vez, algunas han sido obtenidas desde ficheros de parametrización. -->
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi&oacute;n: 2022-06</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi&oacute;n: 9</p>
                                                    <p><span>Jdk:</span> 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi&oacute;n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi&oacute;n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi&oacute;n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versión 5.3.22. Módulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versión: 4.0.1</p>
                                                    <p><span>Mysql connector java (jdbc):</span> versión: 8.0.28</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentación y Sitios de Interés</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentación de Spring</p>
                                                    <p><a href="https://proitcsolution.com.ve/inyeccion-de-dependencias-spring/" target="_blank">Leer</a> Inyección de dependencias con Spring</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1 - Carga de una vista por AJAX en una capa DIV:</span> En este ejemplo, al hacer click, se carga la vista ejemplo1.jsp en una capa (div) utilizando la función $.load de JQuery. La vista ejemplo1.jsp se considera en estos casos en una subvista. <a id="link1" href="#">Ver Ejemplo</a></p>
            				<div id="CapaEjemplo1"></div>			  
            </div>
            <div class="item"><p><span>Ejemplo 2 - Envio de datos asíncronos por POST y carga de la respuesta por AJAX en una capa DIV:</span> En este ejemplo, se envían los datos de forma asíncrona por AJAX y la vista de respuesta es cargada en una capa div.</p>
								<form name="F2" action="#">
                              		<p><label>Nombre: </label> <input type="text" id="F2nombre" /><p>
                              		<p><label>Edad: </label> <input type="number" id="F2edad" min="1" max="120" step="1" /><p>
                              		<br>
                              		<div><input id="F2BtnSend" type="button" value="Enviar" /></div>
                              	</form>
            				<div id="CapaEjemplo2"></div>			  
            </div>
            <div class="item"><p><span>Ejemplo 3 - Envio de datos asíncronos por POST y respuesta JSON:</span> En este ejemplo, se envían los datos de forma asíncrona por AJAX y a diferencia de los ejemplos anteriores, la respuesta es un JSON con el cual desde JavaScript se toma decisiones modificando el DOM. Este tipo de uso de AJAX es de los más frecuentes, ya que con los datos en un JSON se puede aplicar lógica de vista modificando cualquier región del DOM y siendo este, un mecanismo más optimo y ligero. En código de servidor se forma una String con formáto JSON; esta forma de devolver un JSON evita hacer uso de dependencias adicionales.</p>
								<form name="F3" action="#">
                              		<p><label>Empresa: </label> <input type="text" id="F3organizacion" /><p>
                              		<p><label>CIF: </label> <input type="text" id="F3cif" /><p>
                              		<p><label>Antigüedad: </label> <input type="number" id="F3antiguedad" min="1" max="120" step="1" /><p>
                              		<br>
                              		<div><input id="F3BtnSend" type="button" value="Enviar" /></div>
                              	</form>
            				<div id="CapaEjemplo3"></div>			  
            </div>

        </div>
    </div>
    <div class="pie"><p><span>©</span> 2022 - Daniel Pérez Pérez</p></div>

</body>
</html>