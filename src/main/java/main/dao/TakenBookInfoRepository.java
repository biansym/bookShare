package main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import main.model.TakenBookInfo;

public interface TakenBookInfoRepository extends CrudRepository<TakenBookInfo, Long>{

	@Query("select new main.model.TakenBookInfo(ta.id, us.username, bo.id, ta.returned, ta.ownerleftfeedback, bo.name, bo.author, bo.image) "
			+ "from book bo, users us, takenbook ta where bo.userid = ?1 AND bo.id = ta.bookid AND ta.userid = us.id")
	List<TakenBookInfo> findOwnerGivenBooks(long userid);
	
	@Query("select new main.model.TakenBookInfo(ta.id, us.username, bo.id, ta.returned, ta.userleftfeedback, bo.name, bo.author, bo.image) "
			+ "from book bo, users us, takenbook ta where ta.userid = ?1 AND ta.bookid = bo.id AND bo.userid = us.id")
	List<TakenBookInfo> findClientTakenBooks(long userid);
	
}
