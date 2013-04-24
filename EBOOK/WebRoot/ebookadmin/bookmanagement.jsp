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
    
    <title>My JSP 'bookmanagement.jsp' starting page</title>
    
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
.framecss {
	width: 700px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
</style>
  </head>
  
  <body>
   <center>
    <font color="white" size="+2">用户列表</font>
     <table width="655" border="1" class="mtable" cellspacing="0">    
     <!-- start-->
     <tr>
       <td width="210" height="22" align="center">用户名</td>
       <td width="435" align="center">查看用户图书</td>
     </tr>
       <%
    EBOOKDAO db = new EBOOKDAO();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String sql = null;
    String user = null;
    	try {
			conn = db.getDataSource().getConnection();
			stmt = conn.createStatement();
			sql = "select * from user where username <> 'admin'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				rs.beforeFirst();
				while(rs.next()){
					user = rs.getString("username");			
				
		%>	   
     <!-- start-->
     <tr>
       <td width="210" height="22" align="center"><font color="yellow"><%=user %></font></td>
       <td width="435" align="center">
      <a href="/EBOOK/ebookadmin/bookmgmtbody.jsp?user=<%=user %>"><img src="/EBOOK/Images/view.ico"/></a> 
       </td>   
       </form>   
     </tr>
     <!-- end-->
   
  <!-- iframe src="/EBOOK/ebookadmin/bookmgmtbody.jsp" name="bookbody" class="framecss"/ -->
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
 </table>
   </center>
  </body>
</html>
