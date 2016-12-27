package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.model.Book;
import main.model.Category;
import main.service.BookService;
import main.service.CategoryService;
import main.service.UserService;

@Controller
public class ShowBooksController {
	@Autowired
	private BookService bookService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UserService userService;
	
	@GetMapping("/home")
	public String home(Model model, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		List<Book> books = bookService.findAll();
		request.setAttribute("books", books);
		
		return "home";
	}
	
	@GetMapping("/mybooks")
	public String mybooks(Model model, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		long userId = userService.getUserIdByUsername((String)session.getAttribute("logged_user"));
		List<Book> books = bookService.findBooksByUserId(userId);
		request.setAttribute("books", books);
		
		return "mybooks";
	}
	
	@GetMapping("/viewbook")
	public String viewbook(Model model, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		long userId = userService.getUserIdByUsername((String)session.getAttribute("logged_user"));
		List<Book> books = bookService.findBooksByUserId(userId);
		request.setAttribute("books", books);
		
		return "mybooks";
	}
	
	@RequestMapping(value = "/imageController/{bookId}")
	@ResponseBody
	public byte[] helloWorld(@PathVariable long bookId)  {
	  Book book = bookService.findBookById(bookId);
	  if(book == null) 
		  return null;
	  return book.getImage();
	}

}
