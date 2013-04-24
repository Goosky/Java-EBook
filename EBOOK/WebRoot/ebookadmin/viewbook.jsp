<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewbook.jsp' starting page</title>
    
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
.tdcss {
	border-top-color: #FF0;
	border-right-color: #FF0;
	border-bottom-color: #FF0;
	border-left-color: #FF0;
}
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
-->
  </style>
  </head>
  
  <body>
  <center>
<table width="800" height="228" border="1"   class="Mtable"cellspacing="1" align="center">  
<!-- 开发循环 -->
<%
	
%>
  <tr class="tdcss">
    <td height="25" colspan="2" class="tdcss" bordercolordark="#99CC00">图书名称</td>
    <td height="25" colspan="3" class="tdcss">《bookname》</td>
    <td width="90" height="25" class="tdcss">图书所有者</td>
    <td width="185" height="25" colspan="2" class="tdcss">user</td>
    </tr>
  <tr>
    <td width="66" height="34" class="tdcss">作者</td>
    <td width="99" class="tdcss">author</td>
    <td width="68" class="tdcss">出版日期</td>
    <td width="141" class="tdcss">bookpublishdate</td>
    <td width="105"class="tdcss">图书类别</td>
    <td colspan="3" class="tdcss">bookclass</td>
    </tr>
  <tr>
    <td height="140" colspan="2" class="tdcss">图书描述</td>
    <td colspan="6" rowspan="2" class="tdcss">description</td>
    </tr>
  <tr>
    <td height="17"><a href="/EBOOK/ebook/viewdiscussion.jsp?username=&bookname=" target="">查看评论</a></td>
  </tr> 
    <%
    %>
<!-- 结束循环 -->
</table>
</center>
  </body>
</html>
