/*
 * BOOK MODELͼ����
 * */
package cn.ebook.book;

import java.util.Date;



public class BOOK {
	private String bookname;	//ͼ������
	private String author;		//ͼ������
	private String bookclass; 	//ͼ�����
	private String publishdate;	//��������
	private String description;  //ͼ������
	private String discussiontitle; //���۱���
	private String discussiondate;  //����ʱ��
	private String discussion;		//��������
	private String username;	//ͼ������
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
