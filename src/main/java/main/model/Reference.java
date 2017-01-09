package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "reference")
public class Reference {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String review;
	private String fromuser;
	private long touser;
	
	protected Reference() {
		
	}
	
	public Reference(String review, String fromuser, long touser) {
		this.review = review;
		this.fromuser = fromuser;
		this.touser = touser;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getFromuser() {
		return fromuser;
	}

	public void setFromuser(String fromuser) {
		this.fromuser = fromuser;
	}

	public long getTouser() {
		return touser;
	}

	public void setTouser(long touser) {
		this.touser = touser;
	}
	
	
	
}
