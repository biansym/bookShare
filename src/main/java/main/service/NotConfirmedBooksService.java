package main.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.NotConfirmedBooksRepository;
import main.model.SharedBookNotConfirmed;

@Service
@Transactional
public class NotConfirmedBooksService {
	private final NotConfirmedBooksRepository repository;

	public NotConfirmedBooksService(NotConfirmedBooksRepository repository) {
		this.repository = repository;
	}
	
	
	public List<SharedBookNotConfirmed> findRequestedBooksNotConfirmed(long userid) {
		return repository.findRequestedBooksNotConfirmed(userid);
	}	
	
	public List<SharedBookNotConfirmed> findUserRequestedBooks(long userid) {
		return repository.findUserRequestedBooks(userid);
	}	
	
}
