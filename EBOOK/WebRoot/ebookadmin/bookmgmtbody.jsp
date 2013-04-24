<%@ page language="java" import="java.util.*,cn.ebook.db.*,cn.ebook.book.*,javax.sql.*,java.sql.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("gb2312");
response.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String user = request.getParameter("user");
String user0 = (String)session.getAttribute("user");
if(user == null && user0 != null){
		user = user0;
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookmgmtbody.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
Table.Mtable
{
    margin:   0px;
    BORDER-BOTTOM:   blue   1px   solid;
    BORDER-TOP:   blue   1px   solid;
    BORDER-LEFT:   blue   1px   solid;
    BORDER-RIGHT:   blue   1px   solid;
    padding:   0px;
}
TABLE.Mtable td
{
    BORDER-BOTTOM:   blue   1px   solid;
    BORDER-TOP:   blue   1px   solid;
    BORDER-LEFT:   blue   1px   solid;
    BORDER-RIGHT:   blue   1px   solid;
    padding:   0px;
}
</style>
  </head>
  
  <body>
  <center>
    <font color="white" size="+2">用户<%=user %></>的图书列表</font> 
    <%
    EBOOKDAO db = new EBOOKDAO();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String sql = null;
    String bookname = null;
    	try {
			conn = db.getDataSource().getConnection();
			stmt = conn.createStatement();
			sql = "select * from book where username = '"+user+"'";
			rs = stmt.executeQuery(sql);
			//out.print(rs.next());
			if(rs.next()){
			rs.beforeFirst();
			 while(rs.next()){
			 	bookname = rs.getString("bookname");
			 	//out.print(bookname);
			 	//out.print(user);
			%>  
     <!-- start-->
     
     <table width="655" border="1" class="mtable" cellspacing="0">  
     <tr>
      <td width="200" align="center">《<font color="yellow" size="+2"><%=rs.getString("bookname") %></font>》</td>
        <td width="200" align="center"><a href="/EBOOK/AdminDeleteBookServlet?deletebookname=<%=bookname %>&deleteuser=<%=user %>" onclick="return confirm('确定删除吗？')"><img src="/EBOOK/Images/delete.ico"/></a></td>
          </tr>
     <!-- end-->     
   </table>         
   <%
				}//endwhile
			}//endif
			else
			{
				out.print("<center><font color='white' size='+5'>空</font></center>");
			}
} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally{
		rs.close();
		stmt.close();
		conn.close();
	}
	
%>
   </center>
  </body>
</html>
