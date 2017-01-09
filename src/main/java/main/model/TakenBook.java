package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "takenbook")
public class TakenBook {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String returned;
	private String ownerleftfeedback;
	private String userleftfeedback;
	private long bookid;
	private long userid;
	
	public TakenBook(String returned, String ownerleftfeedback, String userleftfeedback, long bookid, long userid) {
		this.returned = returned;
		this.ownerleftfeedback = ownerleftfeedback;
		this.userleftfeedback = userleftfeedback;
		this.bookid = bookid;
		this.userid = userid;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getReturned() {
		return returned;
	}

	public void setReturned(String returned) {
		this.returned = returned;
	}

	public String getOwnerleftfeedback() {
		return ownerleftfeedback;
	}

	public void setOwnerleftfeedback(String ownerleftfeedback) {
		this.ownerleftfeedback = ownerleftfeedback;
	}

	public String getUserleftfeedback() {
		return userleftfeedback;
	}

	public void setUserleftfeedback(String userleftfeedback) {
		this.userleftfeedback = userleftfeedback;
	}

	public long getBookid() {
		return bookid;
	}

	public void setBookid(long bookid) {
		this.bookid = bookid;
	}

	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}
	
	
	
}
