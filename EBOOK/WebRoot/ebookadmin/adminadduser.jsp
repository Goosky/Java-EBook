<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminadduser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
  .InputTxtName {
	color: #00F;
	height: 20px;
	width: 200px;
	font-size: 18px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
  .InputTxtPw {
	height: 20px;
	width: 200px;
	font-size: 14px;
	color: #C00;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
  </style>
  <script type="text/javascript">
  function setData(){
   	if (document.signform.UserTxtName.value.length == 0) {
		alert("����������Ҫʹ�õ��û�����");
		document.signform.UserTxtName.focus();
		return false;
	} else if (document.signform.UserTxtPw.value.length == 0) {
		alert("����������Ҫʹ�õ��û������룡");
		document.signform.UserTxtPw.focus();
		return false;
	}
	return true;
  }
  </script>
  </head>
  
  <body>
    <center>
    <font color="white" size="+2">����ֱ������û�   </font>
    <form action="adduser.action" method="post"  onSubmit="return setData();" name="signform">
    <table width="316" border="1" cellspacing="0" bordercolor="#CCCCCC">
  <tr>
    <td width="69">�û�����</td>
    <td colspan="2"><input id=UserTxtName type="text" class="InputTxtName" name="user.username" maxlength="10" onMouseOver="this.focus();" onMouseOut="this.blur();"/></td>
  </tr>
  <tr>
    <td>���룺</td>
    <td colspan="2"><input id=UserTxtPw type="password" class="InputTxtPw" name="user.password" maxlength="100" onMouseOver="this.focus();" onMouseOut="this.blur();"/></td>
  </tr>
  <tr>
    <td colspan="3" align="center">  <input type="reset" value="����" />      <input type="submit" value="����û�" /></td>
    </tr>
</table>

    </form>
    </center>
  </body>
</html>
