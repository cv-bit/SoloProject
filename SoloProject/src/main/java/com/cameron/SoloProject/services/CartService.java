package com.cameron.SoloProject.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cameron.SoloProject.models.Cart;
import com.cameron.SoloProject.repositories.CartRepository;

@Service
public class CartService {
	private CartRepository cRepo;
	
	public CartService(CartRepository repo) {
		this.cRepo = repo;
	}
	
	public List<Cart> getAllCarts(){
		return this.cRepo.findAll();
	}
	
	public Cart getSingleCart(Long id) {
		return this.cRepo.findById(id).orElse(null);
	}
	
	public Cart createCart(Cart newCart) {
		return this.cRepo.save(newCart);
	}
	
	public void deleteCart(Long id) {
		this.cRepo.deleteById(id);
	}
}
