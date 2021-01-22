package com.cameron.SoloProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameron.SoloProject.models.Items;
import com.cameron.SoloProject.repositories.ItemRepository;

@Service
public class ItemService {
	@Autowired
	private ItemRepository iRepo; 
	
	public ItemService(ItemRepository repo) {
		this.iRepo = repo;
	}
	
	public List<Items> getItems() {
		return (List<Items>) this.iRepo.findAll();
	}
	
	public Items getById(Long id) {
		return this.iRepo.findById(id).orElse(null);
	}
}
