package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import main.model.BookRequest;
import main.model.Category;
import main.service.BookRequestService;
import main.service.CategoryService;

@Controller
public class GetBookController {
	@Autowired
	private BookRequestService bookRequestService;
	@Autowired
	private CategoryService categoryService;
	
	@PostMapping("/getbook")
	public String home(@ModelAttribute("getBookForm") @Valid BookRequest bookrequest, BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		bookRequestService.save(bookrequest);
		
		return "redirect:home";
	}
}
