package main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.model.Category;
import main.model.Reference;
import main.service.CategoryService;
import main.service.ReferenceService;
import main.service.TakenBookService;

@Controller
public class ReferenceController {

	@Autowired
	private ReferenceService referenceService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private TakenBookService takenBookService;
	
	@GetMapping("/leavereference")
	public String leavereference(@RequestParam long id, HttpServletRequest request, HttpSession session) {
		
		if(!(id > 0)) {
			return "redirect:home";
		}
		
		long bookClientId = takenBookService.getTakenUserIdByTakenBookid(id);
		long bookOwnerId = takenBookService.getUserIdByTakenBookid(id);
		long userid = (long) session.getAttribute("userid");
		
		if(bookClientId != userid && bookOwnerId != userid) {
			return "redirect:home";
		}
		
		List<Category> categories = categoryService.findAll();
		request.setAttribute("categories", categories);
		
		request.setAttribute("takenbookid", id);
		
		return "referenceform";
	}
	
	@PostMapping("/submitreference")
	public String submitreference(HttpServletRequest request, HttpSession session) {
		
		String review = request.getParameter("review");
		String takenBookIdString = request.getParameter("takenbookid");
		long takenBookId = Long.parseLong(takenBookIdString);
		
		long bookClientId = takenBookService.getTakenUserIdByTakenBookid(takenBookId);
		long userid = (long) session.getAttribute("userid");
		
		long bookOwnerId = takenBookService.getUserIdByTakenBookid(takenBookId);
		String username = (String) session.getAttribute("logged_user");
		
		if(bookClientId != userid && bookOwnerId != userid) {
			return "redirect:home";
		}
		
		referenceService.save(new Reference(review, username, bookOwnerId));
		
		if(userid == bookOwnerId) {
			takenBookService.setOwnerLeftFeedback(takenBookId);
		} else {
			takenBookService.setClientLeftFeedback(takenBookId);
		}
		
		return "redirect:home";
	}
	
}
