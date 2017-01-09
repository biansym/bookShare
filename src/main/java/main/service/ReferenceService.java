package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.ReferenceRepository;
import main.model.Book;
import main.model.Reference;

@Service
@Transactional
public class ReferenceService {

	private final ReferenceRepository repository;

	public ReferenceService(ReferenceRepository repository) {
		this.repository = repository;
	}
	
	public List<Reference> findReferencesByUserId(Long userId) {
		List<Reference> references = new ArrayList<>();
		for(Reference reference: repository.findByTouser(userId)) {
			references.add(reference);
		}
		return references;
	}
	
	public void save(Reference reference) {
		repository.save(reference);
	}
	
}
