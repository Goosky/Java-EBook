<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
    
    <title>My JSP 'addbookclass.jsp' starting page</title>
    
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
	width: 250px;
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
<script type="text/javascript">
function addbookclass(){
	var bookclass = document.addclassform.bookclass.value;
	if(bookclass.length == 0){
		alert("������ͼ���������ƣ�");
		document.addclassform.bookclass.focus();
		return false;
	}
	else{
	  return ture;
	}
}
</script>
  </head>
  
  <body>
  <form action="addclass.action" method="post" onSubmit="return addbookclass();" name="addclassform">
  <table width="563">
  <tr>
    <td width="236"><image src="/EBOOK/Images/book.jpg"/></td>
    <td width="7" colspan="3">������Ҫ��ӵ�ͼ�����:
      <input type="text" id="bookclass" name="bookclass.bookclass" class="inputTxt" onmouseover="this.focus();" onmouseout="this.blur();"/> <input type="reset" value="��������" class="bb" onclick="alert('���óɹ���')"/><input type="submit" value="���ͼ������" class="bb" /></td>
  </tr>
  </table>
    </form>
  </body>
</html>
