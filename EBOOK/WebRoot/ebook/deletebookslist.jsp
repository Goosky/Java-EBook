<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String booksize = (String)session.getAttribute("booklistsize");
int size = Integer.parseInt(booksize);
String username = (String)session.getAttribute("username");
session.setAttribute("username",username);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deletebookslist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
<!--
.sel {
	width: 220px;
	height: 23px;	
	color: #06F;
}
.bb {
	height: 30px;
	width: 120px;
	color: #06F;
	font-size: 18px;
}
-->

  </style>
  </head>
  
  <body>
  
  <table width="359" border="0">
  <form action="deletebook.action" method="post" onSubmit="return confirm('确定删除吗？');">
    <tr>
      <td width="70" rowspan="3"><img src="/EBOOK/Images/book.jpg"></td>
      <td height="65">&nbsp;</td>
    </tr>
    <tr>
      <td>
      <select name="deletebookname" class="sel">
      <% for(int i =0; i < size; i++){ %>
        <option value="<%=session.getAttribute("bookname["+i+"]") %>"/><%=session.getAttribute("bookname["+i+"]") %>  
        <%} %>
      </select>
      
      <input class="bb" type="submit" value="删除所选图书"/>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    </form>
  </table> 
  </body>
</html>
