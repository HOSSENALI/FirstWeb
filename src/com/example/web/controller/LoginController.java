package com.example.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.web.dao.User;
import com.example.web.service.UsersService;

@Controller
public class LoginController {
	private UsersService usersService;

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/login")
	public String showHome() {

		return "login";
	}
	@RequestMapping("/denied")
	public String showDenied() {

		return "denied";
	}
	@RequestMapping("/admin")
	public String showAdmin(Model model) {
		List<User> users=usersService.getAllUsers();
		model.addAttribute("users",users);
		return "admin";
	}
	@RequestMapping("/loggedout")
	public String showLoggedOut() {

		return "loggedout";
	}
	@RequestMapping("/newaccount")
	public String showNewHome(Model model) {
		model.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.POST)
	public String docreate(@Valid User user, BindingResult result) {

		if (result.hasErrors()) {
			return "newaccount";
		}
		// System.out.println("This is the error:"+result);
		user.setAuthority("ROLE_USER");
		user.setEnabled(true);
		
		if(usersService.exists(user.getUsername())) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}

		try {
			usersService.create(user);
		} catch (DuplicateKeyException e) {
			
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}

		return "accountcreated";

	}
}
