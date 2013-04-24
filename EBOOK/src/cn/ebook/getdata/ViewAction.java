package cn.ebook.getdata;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

public class ViewAction implements Action {

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if( username != null){
			session.setAttribute("username", username);
			return SUCCESS;
		}
		else{
			return "nouser";
		}
	}

}
