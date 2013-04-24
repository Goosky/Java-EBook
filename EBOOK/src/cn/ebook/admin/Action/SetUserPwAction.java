package cn.ebook.admin.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class SetUserPwAction implements Action {

	public EBOOKDAO ebookdao;
	public SetUserPwAction(){
		ebookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String newpw = request.getParameter("newpw");
		String user = (String)session.getAttribute("setuser");
		//System.out.println(newpw);
		if(ebookdao.SetUserPw(user, newpw) == 1){
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
