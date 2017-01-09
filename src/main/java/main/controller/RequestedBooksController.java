package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import main.model.Category;
import main.model.SharedBookNotConfirmed;
import main.model.TakenBookInfo;
import main.service.CategoryService;
import main.service.NotConfirmedBooksService;
import main.service.TakenBookInfoService;

@Controller
public class RequestedBooksController {

	@Autowired
	private NotConfirmedBooksService notConfirmedBookService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private TakenBookInfoService takenBookInfoService;
	
	
	@GetMapping("/requestedbooks")
	public String getsharedbooks(Model model, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		Long userid = (Long) session.getAttribute("userid");
		List<TakenBookInfo> takenBooks = takenBookInfoService.findClientTakenBooks(userid);
		List<SharedBookNotConfirmed> books = notConfirmedBookService.findUserRequestedBooks(userid);
		request.setAttribute("books", books);
		request.setAttribute("takenbooks", takenBooks);
		
		return "requestedbook";
	}
}
