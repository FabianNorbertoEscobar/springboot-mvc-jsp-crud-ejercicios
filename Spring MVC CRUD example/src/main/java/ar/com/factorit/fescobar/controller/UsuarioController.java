package ar.com.factorit.fescobar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ar.com.factorit.fescobar.model.Usuario;
import ar.com.factorit.fescobar.service.RolService;
import ar.com.factorit.fescobar.service.UsuarioService;

@Controller
@RequestMapping(value = "/usuarios")
public class UsuarioController {

	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	RolService rolService;

	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String getUsuarios(Model model) {
		model.addAttribute("usuarios", usuarioService.getUsuarios());
		return "usuarios";
	}
	
	@RequestMapping(value = "/agregar", method = RequestMethod.GET)
	public String agregar(Model model) {
		model.addAttribute("usuario", new Usuario());
		model.addAttribute("listaRoles", rolService.getRoles());
		return "usuarioFormulario";
	}

	@RequestMapping(value = "/guardar", method = RequestMethod.POST)
	public String guardar(@ModelAttribute("usuario") Usuario usuario) {
		usuarioService.save(usuario);
		return "redirect:/usuarios/all";
	}
	
	@RequestMapping(value = "/editar", method = RequestMethod.GET)
	public String editar(@RequestParam("id") int id, Model model) {
		model.addAttribute("usuario", usuarioService.getById(id));
		model.addAttribute("listaRoles", rolService.getRoles());
		return "usuarioFormulario";
	}

	@RequestMapping(value = "/eliminar", method = RequestMethod.GET)
	public String eliminar(@RequestParam("id") int id) {
		usuarioService.delete(id);
		return "redirect:/usuarios/all";
	}
}
