<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setHeader("refresh","3;url='/EBOOK/login/login.jsp'");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Success</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--  meta http-equiv="refresh" content="3;url='../login/login.jsp'"-->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center>
    <font color="blue" size="+2">ע��ɹ���</font>����������<font color="green" size="+2"><a href="/EBOOK/login/login.jsp">��¼</a></font>��ϵͳ��
    </center>
  </body>
</html>
