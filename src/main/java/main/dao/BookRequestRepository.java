package main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import main.model.BookRequest;

public interface BookRequestRepository extends CrudRepository<BookRequest, Long>{
	List<BookRequest> findById(long id);
	List<BookRequest> findByBookid(long id);
	
	@Query("select bo.userid from book bo, bookrequest re where re.id = ?1 and re.bookid = bo.id")
	public long getOwnerId(long requestid);
	
	Long removeById(Long id);

}

