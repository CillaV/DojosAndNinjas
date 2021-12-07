package com.pv.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pv.dojosandninjas.models.Dojo;
import com.pv.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

	private final DojoRepository dojoRepo;
	
	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	

// create a new dojo	
	public Dojo newDojo(Dojo n) {
		return this.dojoRepo.save(n);
	}
	
// show all dojos
	public List<Dojo> allDojos() {
		return this.dojoRepo.findAll();
	}
	
// show one dojo
	public Dojo showOneDojo(Long id) {
		return this.dojoRepo.findById(id).orElse(null);
	}
		
	
	
}
