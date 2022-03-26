package pildoras.es.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pildoras.es.controlador.entity.Cliente;
import pildoras.es.dao.ClienteDAO;

@Controller
@RequestMapping("/cliente")
public class Controlador {

	@Autowired
	private ClienteDAO clienteDAO; //inyeccion de dependencias de objetos de este tipo
	
	@RequestMapping("/lista")
	public String listaClientes(Model elModelo) {
		
		//obtener los clientes desde el DAO
		
		List<Cliente> losClientes = clienteDAO.getClientes(); //creación de lista
		
		//agregar los clientes al modelo
		
		elModelo.addAttribute("clientes", losClientes);
		
		return "lista-clientes";
	}
	
	@RequestMapping("/muestraFormularioAgregar")
	public String muestraFormularioAgregar(Model elModelo) {
		
		//Bind datos cliente
		
		Cliente elCliente = new Cliente();
		
		elModelo.addAttribute("cliente", elCliente);
		
		return "formularioCliente";
	}
	
	@PostMapping("/insertarCliente")
	public String insertarCliente(@ModelAttribute("cliente") Cliente elCliente) {
		
		//insertar cliente en BBDD
		
		clienteDAO.insertarCliente(elCliente);
		
		return "redirect:/cliente/lista";
	}
	
	@GetMapping("/muestraFormularioActualizar")
	public String muestraFormularioActualizar(@RequestParam("clienteId") int Id, Model elModelo) {
		
	//obtener el cliente
		
	Cliente elCliente = clienteDAO.getCliente(Id);
	
	//establecer el cliente como atributo del modelo
	
	elModelo.addAttribute("cliente", elCliente);
	
	//enviar al formulario
	
	return "formularioCliente";
	}
	
	@GetMapping("/eliminar")
	public String eliminarCliente(@RequestParam("clienteId") int Id) {
		
	//eliminar el cliente
		
	clienteDAO.eliminarCliente(Id);
	
	//redireccionar a la lista de clientes
	
	return "redirect:/cliente/lista";
	}

}
