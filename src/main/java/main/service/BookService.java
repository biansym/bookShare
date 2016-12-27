package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.BookRepository;
import main.model.Book;

@Service
@Transactional
public class BookService {

	private final BookRepository repository;

	public BookService(BookRepository repository) {
		this.repository = repository;
	}
	
	public List<Book> findAll() {
		List<Book> books = new ArrayList<>();
		for(Book book: repository.findAll()) {
			books.add(book);
		}
		return books; 
	}
	
	public Book findBookById(long id) {
		List<Book> books = new ArrayList<>();
		for(Book book: repository.findById(id)) {
			books.add(book);
			break;
		}
		if(books.size() > 0) {
			return books.get(0);
		} else {
			return null;
		}
	}
	
	public List<Book> findBooksByUserId(Long userId) {
		List<Book> books = new ArrayList<>();
		for(Book book: repository.findByUserid(userId)) {
			books.add(book);
		}
		return books;
	}
	
	public void save(Book book) {
		repository.save(book);
	}
	
}
