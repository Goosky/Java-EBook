package cn.ebook.management;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

public class ManagementAction implements Action {

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		//request.setAttribute("username", username);
		session.setAttribute("username", username);
		return SUCCESS;
	}

}
