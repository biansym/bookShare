package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.model.BookRequest;
import main.model.Category;
import main.model.SharedBookNotConfirmed;
import main.model.TakenBook;
import main.model.TakenBookInfo;
import main.service.BookRequestService;
import main.service.BookService;
import main.service.CategoryService;
import main.service.NotConfirmedBooksService;
import main.service.TakenBookInfoService;
import main.service.TakenBookService;

@Controller
public class GetSharedBooksController {

	@Autowired
	private NotConfirmedBooksService notConfirmedBookService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private BookRequestService bookRequestService;
	@Autowired
	private TakenBookService takenBookService;
	@Autowired
	private TakenBookInfoService takenBookInfoService;
	@Autowired
	private BookService bookService;
	
	
	@GetMapping("/getsharedbooks")
	public String getsharedbooks(Model model, HttpServletRequest request, HttpSession session) {
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories); 
		
		Long userid = (Long) session.getAttribute("userid");
		
		List<TakenBookInfo> takenBooks = takenBookInfoService.findOwnerGivenBooks(userid);
		List<SharedBookNotConfirmed> books = notConfirmedBookService.findRequestedBooksNotConfirmed(userid);
		request.setAttribute("books", books);
		request.setAttribute("takenbooks", takenBooks);
		
		return "sharedbooks";
	}
	
	@GetMapping("/acceptbook")
	public String acceptbook(@RequestParam long id, HttpServletRequest request, HttpSession session) {
	
		if(!(id > 0)) {
			return "redirect:home";
		}
		
		long bookOwnerId = bookRequestService.getOwnerId(id);	
		long userid = (long) session.getAttribute("userid");
		
		if(bookOwnerId != userid) {
			return "redirect:home";
		}
		
		BookRequest bookRequest = bookRequestService.getBookByRequestId(id);
		TakenBook takenBook = new TakenBook("no","no","no",bookRequest.getBookid(), bookRequest.getUserid());
		takenBookService.save(takenBook);
	
		bookRequestService.removeRequestById(id);
		
		return "redirect:home";
	}
	
	@GetMapping("/rejectbook")
	public String rejectbook(@RequestParam long id, HttpServletRequest request, HttpSession session) {
		
		if(!(id > 0)) {
			return "redirect:home";
		}
		
		long bookOwnerId = bookRequestService.getOwnerId(id);
		long userid = (long) session.getAttribute("userid");
		
		if(bookOwnerId != userid) {
			return "redirect:home";
		}
		
		bookRequestService.removeRequestById(id);
		
		return "redirect:getsharedbooks";
	}
	
	@GetMapping("/returned")
	public String returnedbook(@RequestParam long id, HttpServletRequest request, HttpSession session) {
		
		if(!(id > 0)) {
			return "redirect:home";
		}
		
		long bookOwnerId = takenBookService.getUserIdByTakenBookid(id);
		long userid = (long) session.getAttribute("userid");
		
		if(bookOwnerId != userid) {
			return "redirect:home";
		}
		
		takenBookService.setReturnedByTakenbookid(id);
		
		return "redirect:getsharedbooks";
	}
	
	
}
