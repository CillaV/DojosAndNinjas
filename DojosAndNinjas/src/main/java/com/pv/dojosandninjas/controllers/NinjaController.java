package com.pv.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.pv.dojosandninjas.models.Ninja;
import com.pv.dojosandninjas.services.DojoService;
import com.pv.dojosandninjas.services.NinjaService;

@Controller
public class NinjaController {

	private final NinjaService ninjaService;
	
	private final DojoService dojoService;
	
	public NinjaController(NinjaService ninjaService, DojoService dojoService) {
		this.ninjaService = ninjaService;
		this.dojoService = dojoService;
	}
	
	// alternate method to link
//	@Autowired
//	private NinjaService ninjaService;
//	
//	@AutoWired
//	private DojoService dojoService;
	
	
	
	// show new ninja form
		@GetMapping("/ninjas/new")
		public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
			model.addAttribute("dojos", this.dojoService.allDojos());
			return "newNinja.jsp";
		}
		
	// create new ninja
		@PostMapping("/ninjas/new")
		public String createNinja(@ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
			model.addAttribute("dojos", this.dojoService.allDojos());
			if(result.hasErrors()) {
				return "newNinja.jsp";
			}
			else {
				this.ninjaService.newNinja(ninja);
				return "redirect:/";
			}
		}
	
	// show all ninjas
		@GetMapping("/ninjas")
		public String allNinjas(Model model) {
			model.addAttribute("ninjas", this.ninjaService.allNinjas());
			return "showAllNinjas.jsp";
		}
		
	// show one ninja profile
		@GetMapping("/ninjas/{id}")
		public String showNinja(@PathVariable("id") Long id, Model model) {
			model.addAttribute("ninja", this.ninjaService.showOneNinja(id));
			return "showNinja.jsp";
		}
		
	
}
