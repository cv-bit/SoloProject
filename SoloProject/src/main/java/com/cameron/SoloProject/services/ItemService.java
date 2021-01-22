package com.cameron.SoloProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameron.SoloProject.models.Items;
import com.cameron.SoloProject.repositories.ItemRepository;

@Service
public class ItemService {
	@Autowired
	private ItemRepository IRepo;
	
	public List<Items> getItems() {
		return (List<Items>) this.IRepo.findAll();
	}
	
	public Items getById(Long id) {
		return this.IRepo.findById(id).orElse(null);
	}
}
