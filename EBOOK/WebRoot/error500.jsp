<%@ page language="java" import="java.util.*" pageEncoding="gb2312" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����</title>
    
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
     out.println("�����ԭ��:"+exception+"<br />");
     out.println("������ļ�"+a[0].getFileName()+"<br />");
     out.println("�������"+a[0].getClassName()+"<br />");
     out.println("����ķ���"+a[0].getMethodName()+"<br />");
     out.println("������к�"+a[0].getLineNumber()+"<br />");
     %>
     <font color="red" size="+5" >500 ����    </font>      
      ���������ʵ�ҳ��...<a href="/EBOOK/index.jsp">���ص���ҳ</a>
  </body>
</html>
