package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SharedBookNotConfirmed {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	long bookid;
	private String bookname;
	private String author;
	private String username; 
	private String comment;
	private byte[] image;
	private long requestid;
	private String ownerusername;
	
	protected SharedBookNotConfirmed() {
		
	}

	public SharedBookNotConfirmed(long bookid, String bookname, String author, String username, String comment,
			byte[] image, long requestid, String ownerusername) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.author = author;
		this.username = username;
		this.comment = comment;
		this.image = image;
		this.requestid = requestid;
		this.ownerusername = ownerusername;
	}



	public String getOwnerusername() {
		return ownerusername;
	}

	public void setOwnerusername(String ownerusername) {
		this.ownerusername = ownerusername;
	}

	public long getRequestid() {
		return requestid;
	}

	public void setRequestid(long requestid) {
		this.requestid = requestid;
	}

	public String getBookname() {
		return bookname;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getBookid() {
		return bookid;
	}



	public void setBookid(long bookid) {
		this.bookid = bookid;
	}


	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
