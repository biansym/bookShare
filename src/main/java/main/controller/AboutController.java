package main.controller;

import main.model.Category;
import main.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AboutController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("/about")
	public String about(Model model, HttpServletRequest request) {
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		return "about";
	}
}
