<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy��MM��dd��");
String nowtime = sdf.format(now);
String username = (String)session.getAttribute("username");
String listsize = (String)session.getAttribute("listsize");
int size = Integer.parseInt(listsize);
session.setAttribute("username",username);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addbooks.jsp' starting page</title>
    
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
.inputTxt {
	width: 200px;
	color: #06F;
}
.sel {
	width: 200px;
	height: 23px;	
	color: #06F;
}
.bb {
	height: 30px;
	width: 100px;
	color: #06F;
	font-size: 18px;
}
.areaTxt {	
	color: #06F;
}

-->

  </style>
<script type="text/javascript">
function addbook(){
	var bookname = document.addbookform.bookname.value;
	var bookauthor = document.addbookform.bookauthor.value;
	var bookdiscription = document.addbookform.bookdiscription.value;
	if(bookname.length == 0)
	{
	 alert("��������Ŀ�����ƣ�");
	 document.addbookform.bookname.focus();
	 return false;
	}
	if(bookauthor.length == 0)
	{
	 alert("��������Ŀ�����ߣ�");
	 document.addbookform.bookauthor.focus();
	 return false;
 	}	
 	if(bookdiscription.length == 0)
 	{
 	  alert("��������Ŀ��������Ϣ��");
	 document.addbookform.bookdiscription.focus();
	 return false;
 	}
	return true;
}
</script>
</head>  
<body>
  <form action="addbooks.action" method="post" name="addbookform" onSubmit="return addbook();">
<table width="753" border="0" align="center">
  <tr>
    <td width="304" rowspan="14"><img src="/EBOOK/Images/book.jpg" alt="" width="290" height="380"></td>
    <td width="71" rowspan="14">&nbsp;</td>
    <td colspan="4">ͼ�����ƣ� 
      <input type="text" id="bookname" name="book.bookname" class="inputTxt" onMouseOut="this.blur();" onMouseOver="this.focus();"/></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">ͼ�����ߣ� 
      <input type="text" id="bookauthor" name="book.author" class="inputTxt" onMouseOut="this.blur();" onMouseOver="this.focus();"/></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr> 
  <tr>
    <td colspan="4">ͼ�����
    <select name="bookclass" size="1" class="sel">
    	<% for(int i = 0; i < size ;i++){%>
        <option value="<%=(String)session.getAttribute("bookclass["+i+"]") %>"><%=(String)session.getAttribute("bookclass["+i+"]") %>
        <%} %>
    </select></td>
  </tr>  
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">�������ڣ� 
      <input type="text" value="<%=nowtime%>" class="inputTxt" name="book.publishdate" onMouseOut="this.blur();" onMouseOver="this.focus();"/></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">ͼ��������<textarea id="bookdiscription" name="book.description" cols="45" rows="3" class="areaTxt" onMouseOut="this.blur();" onMouseOver="this.focus();"></textarea></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td width="36">&nbsp;</td>
    <td width="129"><input type="reset" value="��д" onClick="alert('��д�ɹ�!')" class="bb"/></td>
    <td width="65">&nbsp;</td>
    <td width="247"><input type="submit" value="��д����" class="bb"/></td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
