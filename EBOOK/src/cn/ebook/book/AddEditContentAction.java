/*
 添加图书评论Action--未完成
*/
package cn.ebook.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class AddEditContentAction implements Action {
	
	private EBOOKDAO bookdao;
	private BookDiscussion bookds;
	public AddEditContentAction(){
		bookdao = new EBOOKDAO();
	}
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		String content = request.getParameter("content");
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		String bookname = (String)session.getAttribute("bookname");
		bookds.setBookname(bookname);
		bookds.setDiscussioncontent(content);
		bookds.setDiscussiondate("now()");
		bookds.setUsername(username);
		if(bookdao.AddDiscussion(bookds) == 1){
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

	public BookDiscussion getBookds() {
		return bookds;
	}

	public void setBookds(BookDiscussion bookds) {
		this.bookds = bookds;
	}

}
