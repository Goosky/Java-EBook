package cn.ebook.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SetUserPwdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SetUserPwdServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String user = request.getParameter("username0");
		session.setAttribute("setuser", user);
		//response.sendRedirect("setuserpw.action");
		out.print("<style type='text/css'>.bb1{	height: 30px;width: 200px;}.bb2{height: 30px;width: 70px;}.txt{height: 28px;width: 200px;}</style>");
		out.print("<script type='text/javascript'>function myconfirm(){ var pw = document.pw.newpw.value; if(pw.length != 0){if(confirm('��ȷ���޸�����û���������')){return true;}}else{alert('�������޸ĵ������룡');document.pw.newpw.focus(); return false;}}</script>");
		out.print("<center>");
		out.print("<form action='setuserpw.action' method='post' name='pw' onSubmit='return myconfirm()'>" +
				"<input type='button' value='�޸��û���"+user+"������' class='bb1'/>"+
				"<input type='password' name='newpw' class='txt'/>" +
				"<input type='submit' value='�޸�' class='bb2'/><input type='reset' value='����' class='bb2'/></form></center>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
