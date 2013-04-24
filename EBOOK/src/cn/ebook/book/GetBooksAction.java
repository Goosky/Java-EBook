package cn.ebook.book;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class GetBooksAction implements Action {

	public EBOOKDAO bookdao;
	public GetBooksAction(){
		bookdao = new EBOOKDAO();
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request =  ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		/*System.out.println("username is "+username);*/
		session.setAttribute("username", username);
		ArrayList<BOOK> list = null;
		/*ArrayList<BookDiscussion>[] bdklist;*/
		String error = null;
		try {
			list = bookdao.getBooks(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			error = e.toString();
		}
		if(error != null){
			return ERROR;
		}
		else{
			if(!list.isEmpty()){
				session.setAttribute("booklistsize", list.size()+"");
				//session.setAttribute("bdklistsize", bdklist.size()+"");
				for(int i = 0 ; i < list.size(); i++){
					String bookname = (String)list.get(i).getBookname();
					session.setAttribute("bookname["+i+"]", bookname); 		//书名
					String bookauthor = (String)list.get(i).getAuthor();	
					session.setAttribute("bookauthor["+i+"]", bookauthor);	//作者	
					String bookpublishdate = (String)list.get(i).getPublishdate();	
					session.setAttribute("bookpublishdate["+i+"]", bookpublishdate);  //出版时间
					String bookclass = (String)list.get(i).getBookclass();
					session.setAttribute("bookclass["+i+"]", bookclass);	//图书类型
					String description = (String)list.get(i).getDescription();
					session.setAttribute("description["+i+"]", description);	//图书描述	
					String discussiontitle = (String)list.get(i).getDiscussiontitle();
					session.setAttribute("discussiontitle["+i+"]", discussiontitle);	//评论标题
					String discussion = (String)list.get(i).getDiscussion();
					session.setAttribute("discussion["+i+"]", discussion);	//图书评论内容
					String discussiondate = (String)list.get(i).getDiscussiondate();
					session.setAttribute("discussiondate["+i+"]", discussiondate);	//图书评论时间
				}
				return SUCCESS;
			}
			else{

				System.out.println("2");
				return ERROR;
			}
		}	
	}


}



/*
 *  && !bdklist.isEmpty()
 * for(int j = 0; j < bdklist.size(); j++){
 */
	/*String discussiontitle = (String)bdklist.get(j).getDiscussiontitle();
	session.setAttribute("discussiontitle["+j+"]", discussiontitle);	//评论标题
	String discussion = (String)bdklist.get(j).getDiscussioncontent();
	session.setAttribute("discussion["+j+"]", discussion);	//图书评论内容
	String discussiondate = (String)bdklist.get(j).getDiscussiondate();
	session.setAttribute("discussiondate["+j+"]", discussiondate);	//图书评论时间
}*/