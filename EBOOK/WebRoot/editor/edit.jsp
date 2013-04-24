<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
String nowtime = sdf.format(now);
String bookname = request.getParameter("bookname");
String username = request.getParameter("username");
session.setAttribute("username",username);
session.setAttribute("bookname",bookname);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<title>Editor</title>
<style type="text/css">
<!--
.bt {
	font-size: 20px;
	font-style: normal;
	line-height: normal;
	height: 30px;
	width: 200px;
}
.tt {
	color: #0CF;
	font-size: 16px;
	height: 25px;
	width: 400px;
	background-image: url(/EBOOK/Images/back.jpg);
}
-->
</style>
</head>
<body>
<form name="contentform" action="edit.action" method="post" onSubmit="return KindSubmit();">
<table border="0" align="center">
<tr>
<td><font color="yellow">图书名称：<font color="green" size="+1">用户${username}的《<%=bookname %>》</font></td>
</tr>
<tr>
  <td><font color="yellow">评论标题:</font><input id="edittitle" type="text" name="bookds.discussiontitle" class="tt" onmouseover="this.focus();" onMouseOut="this.blur();" border="0"/></td>
</tr>
<tr><td width="85%" rowspan="3">
<div style="font-size:12px;margin-bottom:5px;">
</div>
<input name="content" type="hidden" value="这本书：《<%=bookname %>》，其讲解的内容是：" id="editcontent">
<script type="text/javascript" src="./KindEditor.js"></script>
<script type="text/javascript">
var editor = new KindEditor("editor");
editor.hiddenName = "content";
editor.skinPath = "./skins/default/";
editor.iconPath = "./editor/icons/";
editor.imageAttachPath = "./attached/";
editor.imageUploadCgi = "./upload_cgi/upload.php";
editor.cssPath = "./common.css";
editor.editorType = "simple";
editor.editorWidth = "900px";
editor.editorHeight = "400px";
editor.show();
function KindSubmit() {
var title = document.contentform.edittitle.value;
if(title.length == 0){
 alert("标题不能为空");
 document.contentform.edittitle.focus();
 return false;
}
	editor.data();
	return true;
}
</script>
</td>
</tr>
</table>
<div align="center">
<input type="submit" value="我写好了" class="bt">
</div>
</form>
</body>
</html>
