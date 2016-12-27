package main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import main.service.UserService;

@RestController
public class SampleRestController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello world";
	}
	
	@GetMapping("/users")
	public String allUsers() {
		return userService.findAll().toString();
	}
	
	@GetMapping("/save-user")
	public String saveUser() {
		return userService.findAll().toString();
	}
	
}
