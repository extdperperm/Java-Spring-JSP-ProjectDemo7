package es.dsw.controllers;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import es.dsw.models.Resultado;






@Controller
public class IndexController {

	@GetMapping(value = {"/","/index"})
	public String index() {
		return "index";
	} 
	
	@GetMapping(value = {"/ejemplo1"})
	public String ejemplo1() {
		
		return "ejemplo1";
	}
	
	@PostMapping(value = {"/ejemplo2"})
	public String ejemplo2(@RequestParam("nombre") String nombre, @RequestParam(name="edad", required=false, defaultValue = "-1") int edad, Model objModel) {
		 
		objModel.addAttribute("nombre", nombre);
		objModel.addAttribute("edad", edad);
		
		if ((nombre == "") || (edad < 0)) {
			objModel.addAttribute("error", true);
		} else {
			objModel.addAttribute("error", false);
		}
		
		return "ejemplo2";
	}
	
	//Esta forma de devolver un Json no requiere de ninguna dependencia adicional.
	@RequestMapping(value = "/ejemplo3", method = RequestMethod.POST, produces="application/json") 
	@ResponseBody
	public String ejemplo3(@RequestParam("organizacion") String empresa, @RequestParam("cif") String cif, @RequestParam(name="antiguedad", required=false, defaultValue = "-1") int antiguedad) {
				String RespuestaError = "";
				
				if (empresa.equals("")) {
					RespuestaError = RespuestaError + "Organización, ";
				}
				
				if (cif.equals("")) {
					RespuestaError = RespuestaError + "Cif, ";
				}
				
				if (antiguedad < 0) {
					RespuestaError = RespuestaError + "Antiguedad, ";
				}
				
				if (!RespuestaError.equals("")) {
					RespuestaError = "Faltan campos por rellenar: " + RespuestaError+"end";
					RespuestaError = RespuestaError.replace(", end", "");
					return "{\"error\":\"true\",\"mensaje\":\""+RespuestaError+"\"}";  
				} else {
					return "{\"error\":\"false\",\"mensaje\":\"OK\"}";  
				}
			    
	} 
	
	//Esta forma de devolver un Json sí requiere añadir la dependencia jackson-databind para serializar
	//un objeto o una lista de objetos.
	@RequestMapping(value = "/ejemplo4", method = RequestMethod.GET, produces="application/json") 
	@ResponseBody
	public Resultado ejemplo4() { 
		
		   Resultado objResultado = new Resultado();
		   objResultado.setRespuesta("OK");
		   return objResultado;
	} 
	
	
	
	
}
