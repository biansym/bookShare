package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.TakenBookInfoRepository;
import main.model.TakenBookInfo;


@Service
@Transactional
public class TakenBookInfoService {
	private final TakenBookInfoRepository repository;

	public TakenBookInfoService(TakenBookInfoRepository repository) {
		this.repository = repository;
	}
	
	public List<TakenBookInfo> findOwnerGivenBooks(long userid) {
		List<TakenBookInfo> books = new ArrayList<>();
		for(TakenBookInfo book: repository.findOwnerGivenBooks(userid)) {
			books.add(book);
		}
		return books; 
	}
	
	public List<TakenBookInfo> findClientTakenBooks(long userid) {
		List<TakenBookInfo> books = new ArrayList<>();
		for(TakenBookInfo book: repository.findClientTakenBooks(userid)) {
			books.add(book);
		}
		return books; 
	}
}
