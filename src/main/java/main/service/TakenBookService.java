package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.TakenBookRepository;
import main.model.TakenBook;

@Service
@Transactional
public class TakenBookService {
	private final TakenBookRepository repository;

	public TakenBookService(TakenBookRepository repository) {
		this.repository = repository;
	}
	
	public List<TakenBook> findAll() {
		List<TakenBook> books = new ArrayList<>();
		for(TakenBook book: repository.findAll()) {
			books.add(book);
		}
		return books; 
	}
	
	public long getUserIdByTakenBookid(long bookId) {
		return repository.getUserIdByBookid(bookId);
	}
	
	public long getTakenUserIdByTakenBookid(long takenbookId) {
		return repository.getTakenUserIdByTakenBookid(takenbookId);
	}
	
	public void save(TakenBook book) {
		repository.save(book);
	}
	
	public long setReturnedByTakenbookid(long id) {
		return repository.setReturnedByTakenbookid(id);
	}
	
	public long setOwnerLeftFeedback(long id) {
		return repository.setOwnerLeftFeedback(id);
	}
	
	public long setClientLeftFeedback(long id) {
		return repository.setClientLeftFeedback(id);
	}
}
