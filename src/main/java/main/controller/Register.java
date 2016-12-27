package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import main.model.User;
import main.model.Category;
import main.service.CategoryService;
import main.service.UserService;


@Controller
public class Register {
	
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/")
	public String home(User user, HttpServletRequest request) {
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		request.setAttribute("user", user);
		return "registration";
	}
	
	@RequestMapping("/je")
	public String ind(Model model) {
		return "index";
	}
	
	@GetMapping("/register")
	public String registr(User user, HttpServletRequest request) {
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		request.setAttribute("user", user);
		return "registration";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("userForm") @Valid User user, BindingResult bindingResult, HttpServletRequest request) {
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		if (bindingResult.hasErrors()) {
			user.setPassword("");
			request.setAttribute("user", user);
            return "registration";
        } else {
        	if(userService.checkIfExistByUsername(user.getUsername())) {
        		request.setAttribute("userExist", true);
        		request.setAttribute("user", user);
        		return "registration";
        	} else {
        		userService.save(user);
       		 	return "login";
        	}
        }

	}
}
