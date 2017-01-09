package main.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import main.model.Reference;

public interface ReferenceRepository extends CrudRepository<Reference, Long>{

	List<Reference> findByTouser(long userId);

}
