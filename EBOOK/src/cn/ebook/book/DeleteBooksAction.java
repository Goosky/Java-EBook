/*
 * É¾³ýÍ¼Êé
 * */
package cn.ebook.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class DeleteBooksAction implements Action {
	
	public EBOOKDAO bookdao;
	public DeleteBooksAction(){
		bookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		/*System.out.println("asdasd"+username);*/
		String bookname = request.getParameter("deletebookname");
		/*System.out.println("booname :"+bookname);*/
		if(bookdao.DeleteBook(username, bookname) == 1){
			return SUCCESS;
		}
		else{
		 return ERROR;
		}
	}

}
