package cn.ebook.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class DeleteBookClassAction implements Action {

	public EBOOKDAO bookdao;
	public DeleteBookClassAction(){
		bookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		/*System.out.println("asdasd"+username);*/
		String bookclass = request.getParameter("deletebookclass");
		/*System.out.println("booname :"+bookname);*/
		if(bookdao.DeleteBookClass(username, bookclass) == 1){
			return SUCCESS;
		}
		else{
		 return ERROR;
		}
	}

}
