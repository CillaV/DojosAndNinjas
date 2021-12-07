package com.pv.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pv.dojosandninjas.models.Ninja;
import com.pv.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	private final NinjaRepository ninjaRepo;
	
	public NinjaService(NinjaRepository ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	// create a new ninja	
		public Ninja newNinja(Ninja n) {
			return this.ninjaRepo.save(n);
		}
		
	// show all ninjas
		public List<Ninja> allNinjas() {
			return this.ninjaRepo.findAll();
		}
		
	// show one ninja
		public Ninja showOneNinja(Long id) {
			return this.ninjaRepo.findById(id).orElse(null);
		}
			
		
	
	
	
}
