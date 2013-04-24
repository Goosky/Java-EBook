/*
 * 获取个人图书类别
 * 还未完成
 * */

package cn.ebook.book;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class GetPersonBookClassAction implements Action {
	
	public EBOOKDAO bookdao;
	
	public GetPersonBookClassAction(){
		bookdao = new EBOOKDAO();
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		/*System.out.println("username issadasda"+username);*/
		session.setAttribute("username", username);
		ArrayList<BookClass> list = null;
		String error = null;

		System.out.println("0");
		try {
			list = bookdao.getbookclass(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			error = e.toString();
		}
		if(error != null){
			/*System.out.println("1");*/
			return ERROR;
		}
		else{
			if(!list.isEmpty()){
				//request.setAttribute("bookclass", list);
				session.setAttribute("listsize", list.size()+"");
				for(int i = 0 ; i < list.size(); i++){
					String value = (String)list.get(i).getBookclass();
				/*System.out.println("valu"+value);*/
					session.setAttribute("bookclass["+i+"]", value);
				}
				return SUCCESS;
			}
			else{

				/*System.out.println("2");*/
				return ERROR;
			}
		}	
	}
}
