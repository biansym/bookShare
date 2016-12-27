package main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoggedUserController {

	protected boolean checkIfLogged(HttpServletRequest request, HttpSession session) {
		boolean logged;
		if(session.getAttribute("user") == null || ((String)session.getAttribute("user")).equals("")) {
			logged = false;
		} else {
			logged = true;
		}
		request.setAttribute("logged", logged);
		
		return true;
	}
	
}
