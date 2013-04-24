package cn.ebook.admin.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class UserDeleteAction implements Action {

	public EBOOKDAO ebookdao;
	public UserDeleteAction(){
		ebookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String user = (String)session.getAttribute("deleuser");
		if(ebookdao.DeleteUser(user) == 1){
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
