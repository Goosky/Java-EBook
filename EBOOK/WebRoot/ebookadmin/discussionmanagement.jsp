<%@ page language="java" import="java.util.*,cn.ebook.db.*,cn.ebook.book.*,javax.sql.*,java.sql.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("gb2312");
response.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'discussionmanagement.jsp' starting page</title>
    
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
    <!-- start -->
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
			sql = "select * from bookdiscussion";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				%>
<table width="919" border="1" class="mtable" cellspacing="0" cellpadding="0">
    <tr>
      <td width="148" align="center"><font color="yellow">图书名称</font></td>
      <td width="377" align="center"><font color="yellow">评论</font></td>
      <td width="159" align="center"><font color="yellow">评论人</font></td>
      <td width="134" align="center"><font color="yellow">评论时间</font></td>
      <td width="79" align="center"><font color="yellow">删除</font></td>
    </tr>
				<%
				rs.beforeFirst();
				while(rs.next()){
    %>
     <tr>
      <td width="148" align="center"><font color="yellow">《<%=rs.getString("bookname") %>》</font></td>
      <td width="377" align="center"><font color="yellow"><%=rs.getString("DISCUSSCONTENT") %></font></td>
      <td width="159" align="center"><font color="yellow"><%=rs.getString("USERNAME") %></font></td>
      <td width="134" align="center"><font color="yellow"><%=rs.getString("DISCUSSIONDATE") %></font></td>
      <td width="79" align="center"><a href="/EBOOK/AdminDeleteDiscussionServlet?user=<%=rs.getString("USERNAME") %>&title=<%=rs.getString("DISCUSSIONTITLE") %>" onclick="return confirm('确定删除这条评论吗？')"><img src="/EBOOK/Images/delete.ico" /></a></td>
    </tr>
    <!-- end -->
    <%
		}//endwhile
	}//endif
	else
	{
		out.print("<center><font color='white' size='+5'>没有评论信息</font></center>");
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
  </table>
  </center>
  </body>
</html>
