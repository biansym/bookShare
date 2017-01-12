package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "book")
public class Book {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	private byte[] image;
	
	@NotEmpty
	private String name;
	
	@NotEmpty(message = "It can't be empty")
	private String author;
	
	private int category;
	
	private long userid;
	
	private String description;

	public Book() {
		
	}
	

	public Book(String name, String author, int category, long userid, String description) {
		this.name = name;
		this.author = author;
		this.category = category;
		this.userid = userid;
		this.description = description;

	}
	
	

	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}



	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
