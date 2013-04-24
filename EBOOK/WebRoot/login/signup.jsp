<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<title>EBOOK 用户注册</title>

<style type="text/css">
  .InputTxtName {
	color: #00F;
	background-image: url(/EBOOK/Images/signup_r2_c2.gif);
	height: 20px;
	width: 237px;
	font-size: 18px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
  .InputTxtPw {
	background-image: url(/EBOOK/Images/signup_r4_c2.gif);
	height: 20px;
	width: 237px;
	font-size: 14px;
	color: #C00;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
  .Rb {
	background-image: url(/EBOOK/Images/signup_r6_c2.gif);
	height: 31px;
	width: 97px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
  .sub {
	background-image: url(/EBOOK/Images/signup_r6_c4.gif);
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	height: 31px;
	width: 90px;
	background-repeat: no-repeat;
}
  </style>
  </head>
  <script type="text/javascript">
  function setData(){
   	if (document.signform.UserTxtName.value.length == 0) {
		alert("请输入您将要使用的用户名！");
		document.signform.UserTxtName.focus();
		return false;
	} else if (document.signform.UserTxtPw.value.length == 0) {
		alert("请输入您将要使用的用户名密码！");
		document.signform.UserTxtPw.focus();
		return false;
	}
	return true;
  }
  </script>
 <body>
 <a href="/EBOOK/index.jsp"><img src="/EBOOK/Images/index.gif" width="80" height="50" title="EBOOK首页" /></a>  <a href="/EBOOK/help.html">获取帮助</a>
   <form action="signup.action" method="post"  onSubmit="return setData();" name="signform">
   <table border="0" cellpadding="0" cellspacing="0" width="660" align="center">
  <tr>
   <td><img src="/EBOOK/Images/spacer.gif"  width="228" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="97" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="50" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="90" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="195" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>

  <tr>
   <td colspan="5"><img name="signup_r1_c1" src="/EBOOK/Images/signup_r1_c1.gif" width="660" height="187" border="0" alt=""></td>
  </tr>
  <tr>
   <td rowspan="6"><img name="signup_r2_c1" src="/EBOOK/Images/signup_r2_c1.gif" width="228" height="253" border="0" alt=""></td>
   <td colspan="3"><!--img name="signup_r2_c2" src="/EBOOK/Images/signup_r2_c2.gif" width="237" height="20" border="0" alt=""--><input id=UserTxtName type="text" class="InputTxtName" name="user.username" maxlength="10" onmouseover="this.focus();" onmouseout="this.blur();"/></td>
   <td rowspan="6"><img name="signup_r2_c5" src="/EBOOK/Images/signup_r2_c5.gif" width="195" height="253" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="20" border="0" alt=""></td>
  </tr>
  <tr>
   <td colspan="3"><img name="signup_r3_c2" src="/EBOOK/Images/signup_r3_c2.gif" width="237" height="28" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="28" border="0" alt=""></td>
  </tr>
  <tr>
   <td colspan="3"><!--img name="signup_r4_c2" src="/EBOOK/Images/signup_r4_c2.gif" width="237" height="20" border="0" alt=""--><input id=UserTxtPw type="password" class="InputTxtPw" name="user.password" maxlength="100" onmouseover="this.focus();" onmouseout="this.blur();"/></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="20" border="0" alt=""></td>
  </tr>
  <tr>
   <td colspan="3"><img name="signup_r5_c2" src="/EBOOK/Images/signup_r5_c2.gif" width="237" height="35" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="35" border="0" alt=""></td>
  </tr>
  <tr>
   <td><!--img name="signup_r6_c2" src="/EBOOK/Images/signup_r6_c2.gif" width="97" height="31" border="0" alt=""--><input type="reset" class="Rb" value="" onclick="alert('重置成功！');"/></td>
   <td rowspan="2"><img name="signup_r6_c3" src="/EBOOK/Images/signup_r6_c3.gif" width="50" height="150" border="0" alt=""></td>
   <td><!--img name="signup_r6_c4" src="/EBOOK/Images/signup_r6_c4.gif" width="90" height="31" border="0" alt=""--><input type="submit" value="" class="sub" /></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="31" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img name="signup_r7_c2" src="/EBOOK/Images/signup_r7_c2.gif" width="97" height="119" border="0" alt=""></td>
   <td><img name="signup_r7_c4" src="/EBOOK/Images/signup_r7_c4.gif" width="90" height="119" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="119" border="0" alt=""></td>
  </tr>
</table>
</form>
<center><font color="blue" size="5">Copyroght &copy 2010 Powered by EBOOK Ghalibux</font></center>
  </body>
</html>
