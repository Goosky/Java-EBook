<%@ page language="java" import="java.util.*,cn.ebook.db.*,cn.ebook.book.*,javax.sql.*,java.sql.*" pageEncoding="gb2312"%>
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
    
    <title>My JSP 'viewshelf.jsp' starting page</title>
    
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
    padding:   5px;
}
.bb {
	height: 25px;
	width: 70px;
}
</style>
<script type="text/javascript">
function myconfirm(user){
alert("user");
	if(confirm("您确定删除这个用户吗？")){
		window.location.href="http://www.dlnu.edu.cn/";
		return true;
	}
}
</script>
  </head>
  
  <body>   
    <center><font color="white" size="+3">用户列表</font></center>
  <%
    EBOOKDAO db = new EBOOKDAO();
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    	try {
			conn = db.getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from user where username <> 'admin'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
			rs.beforeFirst();
			while(rs.next()){
			
   %>
    <table class="mtable" cellspacing="0" width="950px">
    <tr>    
    <form action="/EBOOK/UserDeleteServlet" method="post" onSubmit="return confirm('您确定删除这个用户吗？')">
    <td align="center" width="500"><font color="yellow">用户</font></td>
    <td align="center" width="1500"><font color="yellow"><B><a href="/EBOOK/UserControlServlet?username=<%=rs.getString("username") %>" target="_blank"><%=rs.getString("username") %></a></B></font></td>
    <input type="hidden" name="username" value="<%=rs.getString("username") %>" />
    </form>
    </tr>     
    </table>
    <%
    
			}//endwhile
			}//endif
			else{
				out.print("<center><font color='white' size='+5'>空</font></center>");
			}//endelse
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
  </body>
</html>
