package com.cameron.SoloProject.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cameron.SoloProject.models.Items;
import com.cameron.SoloProject.services.ItemService;

@Controller
public class ItemController {
	@Autowired
	private ItemService Iservice;
	
	@GetMapping("/menu")
	public String menu(Model viewModel, @ModelAttribute("Items") Items item) {
	List<Items> allItems = this.Iservice.getItems();
	viewModel.addAttribute("allItems", allItems);
	return "menu.jsp";
}
}
