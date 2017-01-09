package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.BookRequestRepository;
import main.model.BookRequest;

@Service
@Transactional
public class BookRequestService {
	private final BookRequestRepository repository;

	public BookRequestService(BookRequestRepository repository) {
		this.repository = repository;
	}
	
	public List<BookRequest> findAll() {
		List<BookRequest> books = new ArrayList<>();
		for(BookRequest bookRequest: repository.findAll()) {
			books.add(bookRequest);
		}
		return books; 
	}
	
	public void save(BookRequest book) {
		repository.save(book);
	}
	
	public long getOwnerId(long requestid) {
		return repository.getOwnerId(requestid);
	}
	
	public BookRequest getBookByRequestId(long id) {
		for(BookRequest book: repository.findById(id)) {
			return book;
		}	
		return null;
	}
	
	public long removeRequestById(long id) {
		return repository.removeById(id);
	}
	
}
