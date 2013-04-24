/*
 * BOOK MODEL图书类
 * */
package cn.ebook.book;

import java.util.Date;



public class BOOK {
	private String bookname;	//图书名称
	private String author;		//图书作者
	private String bookclass; 	//图书类别
	private String publishdate;	//出版日期
	private String description;  //图书描述
	private String discussiontitle; //评论标题
	private String discussiondate;  //评论时间
	private String discussion;		//评论内容
	private String username;	//图书作者
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBookclass() {
		return bookclass;
	}
	public void setBookclass(String bookclass) {
		this.bookclass = bookclass;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDiscussiontitle() {
		return discussiontitle;
	}
	public void setDiscussiontitle(String discussiontitle) {
		this.discussiontitle = discussiontitle;
	}
	public String getDiscussiondate() {
		return discussiondate;
	}
	public void setDiscussiondate(String discussiondate) {
		this.discussiondate = discussiondate;
	}
	public String getDiscussion() {
		return discussion;
	}
	public void setDiscussion(String discussion) {
		this.discussion = discussion;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
