package cn.ebook.getdata;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

public class GetDataAction implements Action {

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String username = null;

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		//username = request.getParameter("username");
		//System.out.println("href"+username);
		request.setAttribute("viewbooks", "图书信息查看");
		username = (String) session.getAttribute("username");
		//System.out.println("session"+username);
		request.setAttribute("username", username);
		
		return SUCCESS;
	}

}
