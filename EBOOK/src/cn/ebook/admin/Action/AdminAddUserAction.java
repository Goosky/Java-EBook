package cn.ebook.admin.Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;
import cn.ebook.login.User;

import com.opensymphony.xwork2.Action;

public class AdminAddUserAction implements Action {

	public User user;
	public EBOOKDAO dao;
	
	public AdminAddUserAction(){
		dao = new EBOOKDAO();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		if(dao.Signup(user) == 1){
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("username", user.getUsername());
		return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
