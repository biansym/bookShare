package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import main.model.Category;
import main.model.LoginUser;
import main.service.CategoryService;
import main.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@GetMapping("/login")
	public String registr(Model model, HttpServletRequest request) {
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		return "login";
	}
	
	@PostMapping("/login")
	public String registerUser(@ModelAttribute("loginForm") @Valid LoginUser loginuser, BindingResult bindingResult, HttpServletRequest request,
			 HttpSession session) {
		
		if(session.getAttribute("logged_user") != null && !((String)session.getAttribute("logged_user")).equals("")) {
			return "home";
		}
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		request.setAttribute("userExist", true); 
		request.setAttribute("passwordMatch", true);
		 
		
		if (bindingResult.hasErrors()) {
			loginuser.setPassword("");
			request.setAttribute("loginuser", loginuser);
            return "login";
        } else {
        	if(!userService.checkIfExistByUsername(loginuser.getUsername())) {
        		request.setAttribute("userExist", false);
        		loginuser.setPassword("");
        		request.setAttribute("loginuser", loginuser);
        		return "login";
        	} else if(!userService.checkIfUserPasswordCorrect(loginuser.getUsername(), loginuser.getPassword())) {
        		request.setAttribute("passwordMatch", false);
        		loginuser.setPassword("");
        		request.setAttribute("loginuser", loginuser);
        		return "login";
        	} else {
        		String username = loginuser.getUsername();
        		session.setAttribute("logged_user", username);
        		session.setAttribute("userid", userService.getUserIdByUsername(username));
        		//correct data
        		return "redirect:home";
        	}
        }

	}
}
