<%@ page language="java" import="java.util.*,cn.ebook.db.*,cn.ebook.book.*,javax.sql.*,java.sql.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String bookname = request.getParameter("bookname");
String username = request.getParameter("username");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewdiscussion.jsp' starting page</title>
    
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
    <table width="785" border="0" class="mtable" cellspacing="0" cellpadding="0">
  <%
  	EBOOKDAO bookdao = new EBOOKDAO();
  	Connection conn = null;
  	Statement stmt = null;
  	ResultSet rs = null;
  		try {
			conn = bookdao.getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from bookdiscussion where (username = '"+username+"' and bookname = '"+bookname+"') order by DISCUSSIONDATE desc";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
			rs.beforeFirst();
			while(rs.next()){
				
	
   %>
      <tr>
        <td colspan="2">评论标题：</td>
        <td colspan="2"><%=rs.getString("discussiontitle") %></td>
      </tr>
      <tr>
        <td width="81">图书名称：</td>
        <td width="112">《<%=rs.getString("bookname") %>》</td>
        <td colspan="2" rowspan="2"><%=rs.getString("DISCUSSCONTENT") %></td>
      </tr>
      <tr>
        <td height="290" colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"></td>
        <td width="540">评论时间：<%=rs.getString("DISCUSSIONDATE") %></td>
        <td width="24">&nbsp;</td>
      </tr>
    <%}//end while
    }//end if
    else{
    out.println("<center><font color='red'>还没有任何评论信息...</font></center>");
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
  </body>
</html>
