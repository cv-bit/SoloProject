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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		return "index.jsp";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	session.invalidate();
	return "redirect:/";
	}
	@GetMapping("/SignUp") 
		public String SignUp(Model model) {
			model.addAttribute("user", new User());
			return "register.jsp";
		}
	@PostMapping("/login")
	public String Login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirs) {
		if(!this.uService.authenticateUser(email, password)) {
			redirs.addFlashAttribute("error", "Invalid Email/Password");
			return "redirect:/";
		}
		com.cameron.SoloProject.models.User user = this.uService.findByEmail(email);
		session.setAttribute("user_id", user.getId());
		return "redirect:/";
	}
	@PostMapping("/register")
	public String Register(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		validator.validate(user, result);
		if(result.hasErrors())
			return "/register.jsp";
		User newUser = this.uService.registerUser(user);
		session.setAttribute("user_id", newUser.getId());
		return "redirect:/";
	}
}
