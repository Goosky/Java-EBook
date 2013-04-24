<%@ page language="java" import="java.util.*,cn.ebook.db.*,cn.ebook.book.*,javax.sql.*,java.sql.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("gb2312");
response.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String user = (String)session.getAttribute("adminname");
if(user == null){
	out.print("您好像还没登陆哦？");
	response.setHeader("refresh","2;url='/EBOOK/login/login.jsp'");
}else{
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'accountmanagement.jsp' starting page</title>
    
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
.bb1 {
	height: 25px;
	width: 90px;
}
.bb2 {
	height: 25px;
	width: 70px;
}
</style>
<script type="text/javascript">
function myconfirm(user){
	//alert(user);
	if(user != "admin"){
		if(confirm("您确定设置这个用户吗？")){
		   return true;
		}
		else{
			return false;
		}
	}
	else{
		alert("ADMIN不允许设置");
		return false;
	}
}
function delconfirm(user,local){
	//alert(user);
	if(user != "admin"){
		if(user == local){
			alert("不能删除自己");
			return false;
		}
		if(confirm("您确定删除这个用户吗？")){
		   return true;
		}
		else{
			return false;
		}
	}
	else{
		alert("ADMIN不允许删除");
		return false;
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
    String signal = null;
    String signal0 = null;
    String sql = null;
    	try {
			conn = db.getDataSource().getConnection();
			stmt = conn.createStatement();
			if(!"admin".equals(user)){
				sql = "select * from user where username <> 'admin'";
			}
			else{
				sql = "select * from user";
			}
			rs = stmt.executeQuery(sql);
			if(rs.next()){
			rs.beforeFirst();
			while(rs.next()){
			signal = rs.getString("ADMIN");
			if(!rs.getString("username").equals("admin")){
				if(signal.equals("Y")){
					signal = "取消管理员";
				}
				else{
					signal = "设置为管理员";
				}
				if(user.equals(rs.getString("username"))){
					signal0 = "删除";
				}
				else{
					signal0 = "删除";
				}				
			}
			else{
				signal = "ADMIN";
				signal0 = "ADMIN";
			}
		
   %>
    <table class="mtable" cellspacing="0" width="950px">
    <tr>    
    <!-- 删除用户 -->
    <form action="/EBOOK/UserDeleteServlet" method="post" onSubmit="return delconfirm('<%=rs.getString("username") %>','<%=user %>')">
    <td align="center" width="200"><font color="yellow">用户</font></td>
    <td align="center" width="200"><font color="yellow"><B><%=rs.getString("username") %></B></font></td>
    <input type="hidden" name="username" value="<%=rs.getString("username") %>" />
    <td align="center" width="200"><input type="submit" value="<%=signal0 %>" class="bb2" /></td>
    </form>
     <!-- 修改用户密码 -->
    <form action="/EBOOK/SetUserPwdServlet" method="post">
     <input type="hidden" name="username0" value="<%=rs.getString("username") %>" />
    <td align="center" width="200"><input type="submit" value="修改用户密码" class="bb1" /></td> 
    </form>   
     <!-- 设置用户 -->
     <form action="/EBOOK/SetUserAdminServlet" method="post" onSubmit="return myconfirm('<%=rs.getString("username") %>')">
     <input type="hidden" name="username1" value="<%=rs.getString("username") %>" />
    <td align="center" width="200"><input type="submit" value="<%=signal %>" class="bb1" /></td> 
    </form> 
    </tr>     
    </table>
    <%
    	signal = null;
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
<%
	
} %>

