package cn.ebook.book;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.ebook.db.EBOOKDAO;

import com.opensymphony.xwork2.Action;

public class GetPersonBooksAction implements Action {
	public EBOOKDAO bookdao;
	public GetPersonBooksAction(){
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
					session.setAttribute("bookname["+i+"]", bookname); 		//����
					/*String bookauthor = (String)list.get(i).getAuthor();	
					session.setAttribute("bookauthor["+i+"]", bookauthor);	//����	
					String bookpublishdate = (String)list.get(i).getPublishdate();	
					session.setAttribute("bookpublishdate["+i+"]", bookpublishdate);  //����ʱ��
					String bookclass = (String)list.get(i).getBookclass();
					session.setAttribute("bookclass["+i+"]", bookclass);	//ͼ������
					String description = (String)list.get(i).getDescription();
					session.setAttribute("description["+i+"]", description);	//ͼ������	
					String discussiontitle = (String)list.get(i).getDiscussiontitle();
					session.setAttribute("discussiontitle["+i+"]", discussiontitle);	//���۱���
					String discussion = (String)list.get(i).getDiscussion();
					session.setAttribute("discussion["+i+"]", discussion);	//ͼ����������
					String discussiondate = (String)list.get(i).getDiscussiondate();
					session.setAttribute("discussiondate["+i+"]", discussiondate);	//ͼ������ʱ��*/				}
				return SUCCESS;
			}
			else{

				/*System.out.println("2");*/
				return ERROR;
			}
		}	
	}

}
