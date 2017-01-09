package main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import main.model.SharedBookNotConfirmed;

public interface NotConfirmedBooksRepository extends CrudRepository<SharedBookNotConfirmed, Long>{
	
	@Query("select new main.model.SharedBookNotConfirmed(bo.id, bo.name, bo.author, us.username, re.comment, bo.image, re.id, 'j') "
			+ "from book bo, users us, bookrequest re where bo.userid = ?1 AND re.bookid = bo.id AND re.userid = us.id")
	List<SharedBookNotConfirmed> findRequestedBooksNotConfirmed(long userid);
	
	@Query("select new main.model.SharedBookNotConfirmed(bo.id, bo.name, bo.author, 'j', re.comment, bo.image, re.id, us.username) "
			+ "from book bo, users us, bookrequest re where re.userid = ?1 AND re.bookid = bo.id AND bo.userid = us.id")
	List<SharedBookNotConfirmed> findUserRequestedBooks(long userid);
}
