package main.controller;

import java.io.Console;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import main.model.Book;
import main.model.Category;
import main.service.BookService;
import main.service.CategoryService;
import main.service.UserService;

@Controller
public class DeleteBookController {
	@Autowired
	private BookService bookService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UserService userService;
	
	
	@PostMapping("/deletebook")
	public String deletebook(Book book, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		String knygosId = (String) request.getParameter("bookid");
		System.out.println(knygosId);
		
		long bookid;
		try {
			bookid = Long.parseLong(request.getParameter("bookid"));
		} 
		catch (Exception ex) {
			return "redirect:home";
		}

		long userid = (long) session.getAttribute("userid");
		
		Book deletingBook = bookService.findBookById(bookid);
		if(deletingBook.getUserid() == userid) {
			bookService.deleteBookById(bookid);
		} 

		return "redirect:mybooks";
	}
	
}
