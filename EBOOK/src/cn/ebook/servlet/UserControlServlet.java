package cn.ebook.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserControlServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserControlServlet() {
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
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		String username = request.getParameter("username");
		out.print("<center><font color='blue' size='+2'>正在切换到用户书架...</font></center>");
		session.setAttribute("username", username);
		//response.setHeader("refresh", "1;url='/EBOOK/ebookadmin/ebookindex_admin.jsp'");
		if(username == "admin"){
			response.sendRedirect("/EBOOK/ebookadmin/ebookindex_admin.jsp");
		}
		else{
			response.sendRedirect("/EBOOK/ebook/ebookindex.jsp");
		}
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
