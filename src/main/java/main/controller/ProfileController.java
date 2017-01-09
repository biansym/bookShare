package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.model.Book;
import main.model.Category;
import main.model.Reference;
import main.model.User;
import main.service.CategoryService;
import main.service.ReferenceService;
import main.service.UserService;

@Controller
public class ProfileController {

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ReferenceService referenceService;
	
	@GetMapping("/profile")
	public String viewbook(@RequestParam String username, HttpServletRequest request, HttpSession session) {
		
		if(username.equals("")) {
			return "redirect:home";
		}
		
		User user = userService.getUserByUsername(username);
		if(user == null) {
			return "redirect:home";
		}
		
		List<Reference> references = referenceService.findReferencesByUserId(user.getid());
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		request.setAttribute("user", user); 
		request.setAttribute("references", references);
		
		return "profile";
	}
}
