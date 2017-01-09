package main.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import main.model.User;

public interface UserRepository  extends CrudRepository<User, Long>{
	List<User> findByName(String name);
	List<User> findByUsername(String username);
	List<User> findById(long id);
	List<User> findByUsernameAndPassword(String username, String password);
}
