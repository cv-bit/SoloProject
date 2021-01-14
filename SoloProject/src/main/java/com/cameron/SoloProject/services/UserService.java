package com.cameron.SoloProject.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameron.SoloProject.models.User;
import com.cameron.SoloProject.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository uRepo;
	
	public User registerUser(User user) {
		String hash = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hash);
		return this.uRepo.save(user);
	}
	
	public boolean authenticateUser(String email, String password) {
		User user = this.uRepo.findByEmail(email);
		if(user == null) {
			return false;
		}
		
		return BCrypt.checkpw(password, user.getPassword());	
	}
	
	public User findById(Long id) {
		return this.uRepo.findById(id).orElse(null);
	}
	
	public User findByEmail(String email) {
		return uRepo.findByEmail(email);
	}
}
