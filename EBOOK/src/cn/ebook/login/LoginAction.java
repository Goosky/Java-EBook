//Login判断Actin
package cn.ebook.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {

	public User user;	//	用于获取登录form信息的User对象，给struts获取数据	
	public EBOOKDAO ebookdao;
	
	public LoginAction(){
		ebookdao = new EBOOKDAO();
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(user.getUsername().equals("") && user.getPassword().equals("") || user.getUsername() == null && user.getPassword() == null){
			//System.out.print("null");
			return "null";
		}
		else if(ebookdao.Login(user) == 1){			
			session.setAttribute("username", user.getUsername());			
			return SUCCESS;
		}
		else if(ebookdao.Login(user) == 2){
			session.setAttribute("adminname", user.getUsername());			
			return "admin";
		}
		else{
			return ERROR;
		}
	}

}
