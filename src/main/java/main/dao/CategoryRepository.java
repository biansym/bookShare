package main.dao;

import org.springframework.data.repository.CrudRepository;

import main.model.Category;

public interface CategoryRepository  extends CrudRepository<Category, Long> {

}
