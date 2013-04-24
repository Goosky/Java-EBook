/*
 * 
 * 图书评论信息Model
 * */
package cn.ebook.book;

public class BookDiscussion {
	private String bookname;	//图书名称
	private String discussiontitle;
	private String discussiondate;
	private String discussioncontent;
	private String username;
	public String getDiscussiondate() {
		return discussiondate;
	}
	public void setDiscussiondate(String discussiondate) {
		this.discussiondate = discussiondate;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getDiscussiontitle() {
		return discussiontitle;
	}
	public void setDiscussiontitle(String discussiontitle) {
		this.discussiontitle = discussiontitle;
	}
	public String getDiscussioncontent() {
		return discussioncontent;
	}
	public void setDiscussioncontent(String discussioncontent) {
		this.discussioncontent = discussioncontent;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
