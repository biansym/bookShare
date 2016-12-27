package main.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import main.model.Book;
import main.model.Category;
import main.service.BookService;
import main.service.CategoryService;
import main.service.UserService;

@Controller
@MultipartConfig
public class AddBookController {
	
	@Autowired
	private BookService bookService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private UserService userService;
	
	@GetMapping("/addbook")
	public String addbookget(Model model, HttpServletRequest request, HttpSession session) {
		
		if(session.getAttribute("logged_user") == null || ((String)session.getAttribute("logged_user")).equals("")) {
			return "index";
		}
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		request.setAttribute("userExist", true); 
		
		return "addbook";
	}
	
	@PostMapping("/addbook")
	public String addbookpost(@RequestParam("image") MultipartFile image, @ModelAttribute("addBookForm") @Valid Book book, BindingResult bindingResult, HttpServletRequest request,
			 HttpSession session) throws IOException, ServletException {
		
		if(session.getAttribute("logged_user") == null || ((String)session.getAttribute("logged_user")).equals("")) {
			return "index";
		}
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		 
		
		if (image != null) {
			long userid = userService.getUserIdByUsername((String)session.getAttribute("logged_user"));
        	book.setUserid(userid);
                book.setImage(image.getBytes());
                bookService.save(book);               
                return "index";
        } else {
        	return "addbook";
        }
		
		/*
		
		if (bindingResult.hasErrors()) {
			request.setAttribute("book", book);
            return "addbook";
        } else {
        	
        	if (image != null) {
    			long userid = userService.getUserIdByUsername((String)session.getAttribute("logged_user"));
            	book.setUserid(userid);
                    book.setImage(image.getBytes());
                    bookService.save(book);               
                    return "index";
            } else {
            	return "addbook";
            }
        	
        }
        */
        
	}
	
	
	public byte[] readFully(InputStream input) throws IOException
	{
	    byte[] buffer = new byte[8192];
	    int bytesRead;
	    ByteArrayOutputStream output = new ByteArrayOutputStream();
	    while ((bytesRead = input.read(buffer)) != -1)
	    {
	        output.write(buffer, 0, bytesRead);
	    }
	    return output.toByteArray();
	}
	
}
