/*
 ÃÌº”Õº ÈAction
*/
package cn.ebook.book;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class AddBooksAction implements Action {

	private BOOK book;
	private EBOOKDAO ebookdao;
	public AddBooksAction(){
		ebookdao = new EBOOKDAO();
	}
	public BOOK getBook() {
		return book;
	}
	public void setBook(BOOK book) {
		this.book = book;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		/*System.out.println("k"+username);*/
		String bookclass = request.getParameter("bookclass");
		/*System.out.println("bookclass :"+bookclass);*/
		//String publishdate = request.getParameter(arg0);
		/*System.out.println("publish :"+book.getPublishdate());
		System.out.println("description"+book.getDescription());*/
	/*	+book.getPublishdate()
		+"','"+book.getDescription()+"','"+book.getDiscussiontitle()+"','"
		+book.getDiscussiondate()+"','"+book.getDiscussion()+"','"+username+"')"*/
		book.setBookclass(bookclass);
		book.setDiscussiontitle("zcq");
		book.setDiscussiondate("now()");
		book.setDiscussion("zcq");
		int result = ebookdao.addbook(book, username);
		/*System.out.println("result:"+result);*/
		if(result == 1){
		return SUCCESS;
		}
		else{
			return ERROR;
		}
	}

}
