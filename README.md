----------------------------------------------------------------------------------------------------------------------
                                             SpringProyectDemo7                                                      
                                                                                                                     
                                          Autor: Daniel Pérez Pérez                                                  
                                             Fecha: 24/10/2022                                                       
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
DESCRIPCIÓN
----------------------------------------------------------------------------------------------------------------------
Demostración de como realizar peticiones asíncronas basadas en AJAX usando librería Jquery. Se introduce a como devolver
objetos Json desde el servidor (principios de una Api-Rest)

Nota: La versión de org.springframework.web.servlet.DispatcherServlet (ver web.xml) es incompatible con jakarta.servlet.Servlet. Por lo que para ejecutar este proyecto debe hacerlo con Apache TomCat 9 dado que Apache TomCat 10 implementa la nueva estructura JakartaEE. 

Si deseas crear aplicaciones web con Spring sobre Apache TomCat 10 es mejor que utilices spring boot. (Localiza mis repositorios sobre aplicaciones web con Spring Boot 3).

----------------------------------------------------------------------------------------------------------------------
ESPECIFICACIÓN TÉCNICA DE DESARROLLO UTILIZADO
----------------------------------------------------------------------------------------------------------------------
Entorno de Desarrollo: Eclipse, versión: 2022-03 (4.23.0)
Servidor: Apache Tomcat, versión: 9
Jdk: OpenJdk, versión: 17.1
Gestor de proyecto: Maven, versión: 3.8.0
Id Artefacto maven: maven-archetype-webapp, versión: 1.4
Faceta:  Dynamic Web Module, versión: 4.0

----------------------------------------------------------------------------------------------------------------------
DEPENDENCIAS
----------------------------------------------------------------------------------------------------------------------
Spring Framework: Spring Web MVC v.5.3.22      
Javax servlet: v.4.0.1   
jackson-databind: 2.12.4               
----------------------------------------------------------------------------------------------------------------------
RECOMENDACIÓN PARA ABRIR EL PROYECTO EN ECLIPSE
----------------------------------------------------------------------------------------------------------------------
1º. Copie el directorio con el código en el directorio de su espacio de trabajo de eclipse.
2º. Desde eclipse, importe el proyecto haciendo click en File -> Open Projects from File System 
3º. En Import source, haciendo click en el botón "Directory..." seleccione la carpeta que contiene el proyecto.
4º. Haga click en Finish
5º. Se recomienda realizar un Maven Update (Click derecho sobre el proyecto Maven -> Update Project...
6º. Recompilar (salvo que tenga activado compilación automática).
7º. Ejecutar, por ejemplo haciendo click derecho sobre el proyecto -> Run As -> 1 Run on Server


