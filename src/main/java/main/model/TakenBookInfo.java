package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TakenBookInfo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private long takenbookid;
	private String username;
	private long bookid;
	private String returned;
	private String leftfeedback;
	private String bookname;
	private String bookauthor;
	private byte[] image;


	protected TakenBookInfo() {
		
	}
	
	public TakenBookInfo(long takenbookid, String username, long bookid, String returned, String leftfeedback, String bookname,
			String bookauthor, byte[] image) {
		super();
		this.takenbookid = takenbookid;
		this.username = username;
		this.bookid = bookid;
		this.returned = returned;
		this.leftfeedback = leftfeedback;
		this.bookname = bookname;
		this.bookauthor = bookauthor;
		this.image = image;

	}

	public long getTakenbookid() {
		return takenbookid;
	}

	public void setTakenbookid(long takenbookid) {
		this.takenbookid = takenbookid;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public long getBookid() {
		return bookid;
	}



	public void setBookid(long bookid) {
		this.bookid = bookid;
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
	public String getLeftfeedback() {
		return leftfeedback;
	}
	public void setLeftfeedback(String leftfeedback) {
		this.leftfeedback = leftfeedback;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookauthor() {
		return bookauthor;
	}
	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getUsername() {
		return username;
	}
	
}
