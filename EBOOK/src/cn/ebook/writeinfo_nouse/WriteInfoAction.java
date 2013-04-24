package cn.ebook.writeinfo_nouse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

public class WriteInfoAction implements Action {

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request =  ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		//request.setAttribute("write", "¼ÆËã»ú");
		session.setAttribute("username", username);
		return SUCCESS;
	}

}
