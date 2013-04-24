<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String)session.getAttribute("adminname");
//out.print(username);
//out.print("admin".equals(username));
if(username == null){
	out.print("<center><font color='red' size='+2'>您还没有登录...</font></center>");
	
}
else{
session.setAttribute("adminname",username);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EBOOK 后台管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	PADDING-RIGHT: 0px;
	PADDING-LEFT: 0px;
	BACKGROUND: url(../Images/user_all_bg.gif) #226cc5 repeat-x 50% top;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px 0px 0px;
	PADDING-TOP: 0px;
	TEXT-DECORATION: none
}
</style>
<script language="JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_nbGroup(event, grpName) { //v6.0
var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])?args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) { img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr) for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

//-->
</script>
<script language="JavaScript1.2" type="text/javascript" src="/EBOOK/CSS/mm_css_menu.js"></script>
<style type="text/css" media="screen">
	@import url("/EBOOK/CSS/adminguide2.css");
</style>
  </head>
  
  <body bgcolor="#999999" onLoad="MM_preloadImages('Images/adminguide2_r1_c2_f2.jpg','Images/adminguide2_r1_c2_f4.jpg','Images/adminguide2_r1_c2_f3.jpg','Images/adminguide2_r1_c4_f2.jpg','Images/adminguide2_r1_c4_f4.jpg','Images/adminguide2_r1_c4_f3.jpg','Images/adminguide2_r1_c6_f2.jpg','Images/adminguide2_r1_c8_f2.jpg','Images/adminguide2_r1_c8_f4.jpg','Images/adminguide2_r1_c8_f3.jpg','Images/adminguide2_r1_c10_f2.jpg','Images/adminguide2_r1_c10_f4.jpg','Images/adminguide2_r1_c10_f3.jpg','Images/adminguide2_r1_c12_f2.jpg','Images/adminguide2_r1_c12_f4.jpg','Images/adminguide2_r1_c12_f3.jpg');">  
  <a href="/EBOOK/index.jsp"><img src="/EBOOK/Images/index.gif" width="50" height="30" title="EBOOK首页"/></a>
  <center>
  <img alt="" src="/EBOOK/Images/index.jpg" width="1000" height="200"/>
<div id="FWTableContainer1348456380">
<table border="0" cellpadding="0" cellspacing="0" width="1000">
<!-- fwtable fwsrc="adminguide2.png" fwpage="页面 1" fwbase="adminguide2.jpg" fwstyle="Dreamweaver" fwdocid = "1348456380" fwnested="0" -->
  <tr>
   <td><img src="Images/spacer.gif" width="14" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="146" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="4" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="138" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="9" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="138" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="7" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="138" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="13" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="220" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="22" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="138" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="13" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>

  <tr>
   <td><img name="adminguide2_r1_c1" src="Images/adminguide2_r1_c1.jpg" width="14" height="30" border="0" alt=""></td>
   <td><a href="/EBOOK/ebookadmin/ebookindex_admin.jsp?user=<%=username %>" target="_blank" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','adminguide2_r1_c2','Images/adminguide2_r1_c2_f2.jpg','Images/adminguide2_r1_c2_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','adminguide2_r1_c2','Images/adminguide2_r1_c2_f3.jpg',1);"><img name="adminguide2_r1_c2" src="Images/adminguide2_r1_c2.jpg" width="146" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c3" src="Images/adminguide2_r1_c3.jpg" width="4" height="30" border="0" alt=""></td>
   <td><a href="/EBOOK/ebookadmin/viewshelf.jsp" target="adminbody" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','adminguide2_r1_c4','Images/adminguide2_r1_c4_f2.jpg','Images/adminguide2_r1_c4_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','adminguide2_r1_c4','Images/adminguide2_r1_c4_f3.jpg',1);"><img name="adminguide2_r1_c4" src="Images/adminguide2_r1_c4.jpg" width="138" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c5" src="Images/adminguide2_r1_c5.jpg" width="9" height="30" border="0" alt=""></td>
   <td><a href="javascript:;" onMouseOut="MM_swapImgRestore();MM_menuStartTimeout(1000);" onMouseOver="MM_menuShowMenu('MMMenuContainer0031000145_0', 'MMMenu0031000145_0',34,40,'adminguide2_r1_c6');MM_swapImage('adminguide2_r1_c6','','Images/adminguide2_r1_c6_f2.jpg',1);"><img name="adminguide2_r1_c6" src="Images/adminguide2_r1_c6.jpg" width="138" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c7" src="Images/adminguide2_r1_c7.jpg" width="7" height="30" border="0" alt=""></td>
   <td><a href="/EBOOK/ebookadmin/bookmanagement.jsp" target="adminbody" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','adminguide2_r1_c8','Images/adminguide2_r1_c8_f2.jpg','Images/adminguide2_r1_c8_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','adminguide2_r1_c8','Images/adminguide2_r1_c8_f3.jpg',1);"><img name="adminguide2_r1_c8" src="Images/adminguide2_r1_c8.jpg" width="138" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c9" src="Images/adminguide2_r1_c9.jpg" width="13" height="30" border="0" alt=""></td>
   <td><a href="/EBOOK/ebookadmin/discussionmanagement.jsp" target="adminbody" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','adminguide2_r1_c10','Images/adminguide2_r1_c10_f2.jpg','Images/adminguide2_r1_c10_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','adminguide2_r1_c10','Images/adminguide2_r1_c10_f3.jpg',1);"><img name="adminguide2_r1_c10" src="Images/adminguide2_r1_c10.jpg" width="220" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c11" src="Images/adminguide2_r1_c11.jpg" width="22" height="30" border="0" alt=""></td>
   <td><a href="/EBOOK/login/login.jsp" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','adminguide2_r1_c12','Images/adminguide2_r1_c12_f2.jpg','Images/adminguide2_r1_c12_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','adminguide2_r1_c12','Images/adminguide2_r1_c12_f3.jpg',1);"><img name="adminguide2_r1_c12" src="Images/adminguide2_r1_c12.jpg" width="138" height="30" border="0" alt=""></a></td>
   <td><img name="adminguide2_r1_c13" src="Images/adminguide2_r1_c13.jpg" width="13" height="30" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="1" height="30" border="0" alt=""></td>
  </tr>
</table>
<div id="MMMenuContainer0031000145_0">
	<div id="MMMenu0031000145_0" onMouseOut="MM_menuStartTimeout(0);" onMouseOver="MM_menuResetTimeout(0);">
		<a href="/EBOOK/ebookadmin/accountmanagement.jsp" target="adminbody" id="MMMenu0031000145_0_Item_0" class="MMMIFVStyleMMMenu0031000145_0" onMouseOver="MM_menuOverMenuItem('MMMenu0031000145_0');">
			设置用户
		</a>
		<a href="/EBOOK/ebookadmin/adminadduser.jsp" target="adminbody" id="MMMenu0031000145_0_Item_1" class="MMMIVStyleMMMenu0031000145_0" onMouseOver="MM_menuOverMenuItem('MMMenu0031000145_0');">
			新建用户
		</a>
	</div>
</div>
</div>
<iframe src="/EBOOK/ebookadmin/adminbody.jsp" width="1000" height="500" name="adminbody" frameborder="0"></iframe>
  </center>
  <center><font color="blue" size="5">Copyroght &copy 2010 Powered by Power</font></center>
  </body>
</html>
<%}%>