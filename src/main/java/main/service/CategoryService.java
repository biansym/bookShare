package main.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import main.dao.CategoryRepository;
import main.model.Category;


@Service
@Transactional
public class CategoryService {

	private final CategoryRepository repository;
	
	public CategoryService(CategoryRepository repository) {
		this.repository = repository;
	}

	public List<Category> findAll() {
		List<Category> categories = new ArrayList<>();
		for(Category category: repository.findAll()) {
			categories.add(category);
		}
		return categories; 
	}
}
