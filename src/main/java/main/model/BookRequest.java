package main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "bookrequest")
public class BookRequest {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private long id;
		
		private String comment;
		private long bookid;
		private long userid;
		
		protected BookRequest () {
			
		}
		
		public BookRequest(String comment, long bookid, long userid) {
			this.comment = comment;
			this.bookid = bookid;
			this.userid = userid;
		}

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getComment() {
			return comment;
		}

		public void setComment(String comment) {
			this.comment = comment;
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
