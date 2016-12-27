package main.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import main.model.Book;

public interface BookRepository extends CrudRepository<Book, Long>{
	List<Book> findByName(String name);
	List<Book> findById(long id);
	List<Book> findByUserid(long id);
}
