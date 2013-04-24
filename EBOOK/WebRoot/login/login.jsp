<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<% request.setCharacterEncoding("gb2312"); %>
	<HEAD>
		<TITLE>EBOOK-用户登录</TITLE>
		<LINK href="/EBOOK/Images/User_Login.css" type=text/css rel=stylesheet>
			<script type="text/javascript">
function checkloginform() {
	if (document.loginform.TxtUserName.value.length == 0) {
		alert("请输入您的用户名！");
		document.loginform.TxtUserName.focus();
		return false;
	} else if (document.loginform.TxtPassword.value.length == 0) {
		alert("请输入您的用户密码！");
		document.loginform.TxtPassword.focus();
		return false;
	}
	return true;
}
</script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
body {
	background-color: #195193;
}
-->
</style></HEAD>
	<BODY id=userlogin_body>    
		<DIV></DIV>

		<DIV id=user_login>
        <a href="/EBOOK/index.jsp"><img src="/EBOOK/Images/index.gif" width="80" height="50" title="EBOOK首页" /></a>
			<DL>
				<DD id=user_top>
					<UL>
						<LI class=user_top_l></LI>
						<LI class=user_top_c></LI>
						<LI class=user_top_r></LI>
					</UL>
					<DD id=user_main>
						<UL>
							<form action="login.action" method="post" name="loginform"
								onsubmit="return checkloginform();">
								<LI class=user_main_l></LI>
								<LI class=user_main_c>
									<DIV class=user_main_box>

										<UL>
											<LI class=user_main_text>
												用户名：
											</LI>
											<LI class=user_main_input>
												<INPUT class=TxtUserNameCssClass id=TxtUserName maxLength=20
													name="user.username">
											</LI>
										</UL>
										<UL>
											<LI class=user_main_text>
												密 码：
											</LI>
											<LI class=user_main_input>
												<INPUT class=TxtPasswordCssClass id=TxtPassword
													type=password name="user.password">
											</LI>
										</UL>
									</DIV>
								</LI>
								<LI class=user_main_r>
									<INPUT class=IbtnEnterCssClass id=IbtnEnter
										style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
										type=submit name=IbtnEnter value="">
									</input>
									<input class=IbtnResetCssClass id=IbtnReset
										style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
										type="reset" value="" onclick="javascript:;alert('重置成功')"></input>
								</LI>
							</form>
						</UL>
						<DD id=user_bottom>
							<UL>
								<LI class=user_bottom_l></LI>
								<LI class=user_bottom_c>
									<SPAN style="MARGIN-TOP: 40px"></SPAN>
								</LI>
								<LI class=user_bottom_r><br /></LI>
								<LI>
									<font color="black" size="5">Copyroght &copy 2010
										Powered by Power</font>
								</LI>
							</UL>
						</DD>
			</DL>
		</DIV>
		<SPAN id=ValrUserName style="DISPLAY: none; COLOR: red"></SPAN>
		<SPAN id=ValrPassword style="DISPLAY: none; COLOR: red"></SPAN>
		<SPAN id=ValrValidateCode style="DISPLAY: none; COLOR: red"></SPAN> <
		</FORM>
	</BODY>
</HTML>
