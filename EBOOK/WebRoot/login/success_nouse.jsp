<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
    request.setCharacterEncoding("gb2312");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			//String username = request.getParameter("username");
			String username = (String)request.getAttribute("username");
			//out.println("usr"+usr);
			out.println(username);
			//String usr = ;
			
		%>

<Script type="text/javascript">
function messageWindow(title, msg)
{
  var width="300", height="125";
  var left = (screen.width/2) - width/2;
  var top = (screen.height/2) - height/2;
  var styleStr = 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbar=no,resizable=no,copyhistory=yes,width='+width+',height='+height+',left='+left+',top='+top+',screenX='+left+',screenY='+top;
  var msgWindow = window.open("","msgWindow", styleStr);
  var head = '<head><title>'+title+'</title></head>';
  var body = '<center>'+msg+'<br><p><form><input type="button" value="   Done   " onClick="self.close()"></form>';
  msgWindow.document.write(head + body);
}
</Script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>EBOOK-Login Success</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body onload="messageWindow()">
	<!--body-->
		<center>
			<b><font color="blue" size="5">Congratulation,Login	Success</font> </b><br>
		   Redirecting....		   
		</center>
		<%
			String urlpath =  "3;url='../ebook/ebookindex.jsp?username="+username+"'";
		    urlpath = new String(urlpath.getBytes("utf-8"),"ISO8859_1");
			//String urlpath =  "../ebook/ebookindex.jsp?username=URLEncode.encode("+username+",utf-8)";
			response.setHeader("refresh",urlpath);
			//response.sendRedirect(urlpath);		
		 %>
	</body>
</html>
