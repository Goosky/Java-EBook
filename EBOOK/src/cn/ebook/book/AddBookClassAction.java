/*
 添加图书分类Action
*/
package cn.ebook.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class AddBookClassAction implements Action {

	private BookClass bookclass;
	private EBOOKDAO bookdao;
	public AddBookClassAction(){
		bookdao = new EBOOKDAO();
	}
	public BookClass getBookclass() {
		return bookclass;
	}
	public void setBookclass(BookClass bookclass) {
		this.bookclass = bookclass;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username1 = (String)session.getAttribute("username");
		/*System.out.println(bookclass.getBookclass());
		System.out.println("username"+username1);*/
		bookclass.setUsername(username1);
		int result = bookdao.addbookclass(bookclass);
		if(result == 1){
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
