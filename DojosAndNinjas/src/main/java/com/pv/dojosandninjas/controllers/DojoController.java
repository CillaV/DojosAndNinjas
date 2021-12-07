package com.pv.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.pv.dojosandninjas.models.Dojo;
import com.pv.dojosandninjas.services.DojoService;
import com.pv.dojosandninjas.services.NinjaService;

@Controller
public class DojoController {

	private final DojoService dojoService;
	
	private final NinjaService ninjaService;
	
	public DojoController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}
	
// main dashboard
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
// show new dojo form
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo, Model model) {
		model.addAttribute("dojos", this.dojoService.allDojos());
		return "newDojo.jsp";
	}
	
// create new dojo
	@PostMapping("/dojos/new")
	public String createDojo(@ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}
		else {
			this.dojoService.newDojo(dojo);
			return "redirect:/";
		}
	}
	
// show all dojos
	@GetMapping("/dojos")
	public String allDojos(Model model) {
		model.addAttribute("dojos", this.dojoService.allDojos());
		return "showAllDojos.jsp";
	}
	
// show single dojo and ninjas
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", this.dojoService.showOneDojo(id));
// need to include ninja list -- place with variable? new service for find by dojo	
//		model.addAttribute("ninjas", this.ninjaService.allNinjas());
		return "showDojo.jsp";
	}
	
	
}
