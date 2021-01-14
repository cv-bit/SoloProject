package com.cameron.SoloProject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cameron.SoloProject.models.User;
import com.cameron.SoloProject.services.UserService;
import com.cameron.SoloProject.vallidations.UserValidator;

@Controller
public class UserController {
	@Autowired
	private UserService uService;
	@Autowired
	private UserValidator validator;
	
	@GetMapping("/")
	public String root() {
		return "/index.jsp";
	}
	@GetMapping("/login")
	public String Index() {
		return "/login.jsp";
	}
	@GetMapping("/register")
	public String register() {
		return "/register.jsp";
	}
}
