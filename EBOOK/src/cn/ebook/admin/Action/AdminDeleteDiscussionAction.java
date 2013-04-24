package cn.ebook.admin.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class AdminDeleteDiscussionAction implements Action {


	public EBOOKDAO bookdao;
	public AdminDeleteDiscussionAction(){
		bookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String user = (String)session.getAttribute("user");
		String title = (String)session.getAttribute("title");
		session.setAttribute("user", user);
		//System.out.println("asdasd"+user+bookname);
		if(bookdao.DeleteDiscussion(user, title) == 1){
			return SUCCESS;
		}
		else{
		 return ERROR;
		}
	}

}
