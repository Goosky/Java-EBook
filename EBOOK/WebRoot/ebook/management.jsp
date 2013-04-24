<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String)session.getAttribute("username");
session.setAttribute("username",username);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'management.jsp' starting page</title>
    
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
.ifrme {
	height: 500px;
	width: 750px;
}
-->
  </style></head>
  
  <body>
  <table width="860" border="0">
        <tr>
        <td width="398"> 
          <a  href="getclass.action" target="manage" ><img alt="" src="/EBOOK/Images/addbooks.jpg" /></a>          
           <a href="getpersonbooks.action" target="manage"><img src="/EBOOK/Images/deletebooks.jpg" /></a> 
           <a href="/EBOOK/ebook/addbookclass.jsp" target="manage"><img src="/EBOOK/Images/addclass.jpg" /></a>    
           <a href="getpersonclass.action" target="manage"><img src="/EBOOK/Images/deleteclass.jpg" /></a></td>
          <td width="397" rowspan="5"><iframe src="/EBOOK/ebook/mybookshelf.jsp" name="manage" class="ifrme" scrolling="no" frameborder="0"/></td>
    
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </ul>
  </table>
  
</body>
</html>
