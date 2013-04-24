<%@ page language="java" import="java.util.*" pageEncoding="gb2312" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="refresh" content="3;url='/EBOOK/index.jsp'">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
     StackTraceElement a[] = exception.getStackTrace();
     out.println("出错的原因:"+exception+"<br />");
     out.println("出错的文件"+a[0].getFileName()+"<br />");
     out.println("出错的类"+a[0].getClassName()+"<br />");
     out.println("出错的方法"+a[0].getMethodName()+"<br />");
     out.println("出错的行号"+a[0].getLineNumber()+"<br />");
     %>
     <font color="red" size="+5" >500 错误    </font>      
      请检查您访问的页面...<a href="/EBOOK/index.jsp">返回到首页</a>
  </body>
</html>
