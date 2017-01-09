package main.dao;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import main.model.TakenBook;

public interface TakenBookRepository extends CrudRepository<TakenBook, Long> {
	
	@Query("select bo.userid from takenbook ta, book bo where ta.id = ?1 and ta.bookid = bo.id")
	long getUserIdByBookid(long takenbookid);
	
	@Query("select ta.userid from takenbook ta where ta.id = ?1")
	long getTakenUserIdByTakenBookid(long takenbookid);
	
	@Modifying
	@Query("update takenbook u set u.returned = 'yes' where u.id = ?1")
	int setReturnedByTakenbookid(long id);
	
	@Modifying
	@Query("update takenbook u set u.ownerleftfeedback = 'yes' where u.id = ?1")
	int setOwnerLeftFeedback(long id);
	
	@Modifying
	@Query("update takenbook u set u.userleftfeedback = 'yes' where u.id = ?1")
	int setClientLeftFeedback(long id);
}
