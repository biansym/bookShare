package main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import main.model.Book;

public interface BookRepository extends CrudRepository<Book, Long>{
	List<Book> findByName(String name);
	List<Book> findById(long id);
	List<Book> findByUserid(long id);
	int deleteById(long id);
	
	@Query("select bo.userid from book bo where bo.id = ?1 ")
	long getUserIdByBookid(long bookId);
	
	@Query("select new main.model.Book(bo.name, bo.author, bo.category, bo.userid, bo.description) from book bo where bo.category = ?1 ")
	List<Book> getBooksByCategory(int categoryId);
	
	
}
