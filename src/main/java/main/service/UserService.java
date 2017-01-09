package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.UserRepository;
import main.model.User;

@Service
@Transactional
public class UserService {

	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public List<User> findAll() {
		List<User> users = new ArrayList<>();
		for(User user: userRepository.findAll()) {
			users.add(user);
		}
		return users; 
	}
	
	public void save(User user) {
		userRepository.save(user);
	}
	
	public boolean checkIfExistByUsername(String username) {
		List<User> users = userRepository.findByUsername(username);
		if(users.size() > 0)
			return true;
		return false;
	}
	
	public boolean checkIfUserPasswordCorrect(String username, String password) {
		List<User> users = userRepository.findByUsernameAndPassword(username,password);
		if(users.size() > 0)
			return true;
		return false;
	}
	
	public long getUserIdByUsername(String username) {
		List<User> users = userRepository.findByUsername(username);
		if(users.size() > 0) {
			return users.get(0).getid();
		} else {
			return 0;
		}
	}
	
	public String getUsernameById(long id) {
		List<User> users = userRepository.findById(id);
		if(users.size() > 0) {
			return users.get(0).getUsername();
		} else {
			return "";
		}
	}
	
	public User getUserByUsername(String username) {
		List<User> users = userRepository.findByUsername(username);
		if(users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}
	}
	
}
