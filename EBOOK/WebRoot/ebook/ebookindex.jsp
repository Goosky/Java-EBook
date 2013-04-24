<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String username = (String)session.getAttribute("username");
//request.setAttribute("username",username);
session.setAttribute("username",username);
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss(a)(EE)");
String nowtime = sdf.format(now);
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>EBOOKSHELF</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="./src/js/jscal2.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">body {
	background-image: url(/EBOOK/Images/back.jpg);
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
</head>
	<Script type="text/javascript">   
function messageWindow(title, msg)
{
  var width="300", height="125";
  var left = (screen.width/2) - width/2;
  var top = (screen.height/2) - height/2;
  var styleStr = 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbar=no,resizable=no,copyhistory=no,width='+width+',height='+height+',left='+left+',top='+top+',screenX='+left+',screenY='+top;
  var msgWindow = window.open("","msgWindow", styleStr)
  var head = '<head><title>'+title+'</title></head>';
  var body = '<center><b><font color="blue">'+msg+'</font></b><br><p><form><input type="button" value="   关闭窗口   " onClick="self.close()"></form>';
  msgWindow.document.write(head + body);
}
</Script>
	<body bgcolor="#ffffff" onLoad="MM_preloadImages('Images/index_r2_c2_f2.jpg','Images/index_r2_c2_f4.jpg','Images/index_r2_c2_f3.jpg','Images/index_r2_c4_f2.jpg','Images/index_r2_c4_f4.jpg','Images/index_r2_c4_f3.jpg','Images/index_r2_c6_f2.jpg','Images/index_r2_c6_f4.jpg','Images/index_r2_c6_f3.jpg');">
	<p> 
	<table>
	<tr><td><a href="/EBOOK/index.jsp?username=<%=username %>" target="_top"><image src="/EBOOK/Images/index.gif" width="50" height="30" title="EBOOK 首页"></image></a></td><td witd="30"><font color="red" size="+3"><b>登录成功！欢迎您！</b></font></td><td witd="30"><font color="#FF0000"> ${username}</font></td>
	<td width="130"><a href="/EBOOK/login/login.jsp"><font color="#99FF00">注销</font></a></td>
	<td width="579" align="left"><font color="yellow">成功登录时间是:</font><font color="#FF3368"><i><%=nowtime %></i></font></td></tr>
		</table>	 
	</p>	
	<table border="0" cellpadding="0" cellspacing="0" width="800" cellpadding="0">
<!-- fwtable fwsrc="index.png" fwpage="页面 1" fwbase="index.jpg" fwstyle="Dreamweaver" fwdocid = "162396558" fwnested="0" -->
  <tr>
   <td><img src="Images/spacer.gif" width="87" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="180" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="70" height="1" border="0" alt=""></td>
   <td><img src="Images/spacer.gif" width="180" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="52" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="180" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="51" height="1" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>

  <tr>
   <td colspan="7"><img name="index_r1_c1" src="/EBOOK/Images/index_r1_c1.jpg" width="800" height="9" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="9" border="0" alt=""></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="index_r2_c1" src="/EBOOK/Images/index_r2_c1.jpg" width="87" height="41" border="0" alt=""></td>
   <td><a href="getdata.action" target="ebook" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','index_r2_c2','/EBOOK/Images/index_r2_c2_f2.jpg','/EBOOK/Images/index_r2_c2_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','index_r2_c2','/EBOOK/Images/index_r2_c2_f3.jpg',1);"><img name="index_r2_c2" src="/EBOOK/Images/index_r2_c2.jpg" width="180" height="35" border="0" alt=""></a></td>
   <td rowspan="2"><img name="index_r2_c3" src="/EBOOK/Images/index_r2_c3.jpg" width="70" height="41" border="0" alt=""></td>
   <td><a href="getbooks.action" target="ebook" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','index_r2_c4','/EBOOK/Images/index_r2_c4_f2.jpg','/EBOOK/Images/index_r2_c4_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','index_r2_c4','/EBOOK/Images/index_r2_c4_f3.jpg',1);"><img name="index_r2_c4" src="/EBOOK/Images/index_r2_c4.jpg" width="180" height="35" border="0" alt=""></a></td>
   <td rowspan="2"><img name="index_r2_c5" src="/EBOOK/Images/index_r2_c5.jpg" width="52" height="41" border="0" alt=""></td>
   <td><a href="management.action" target="ebook" onMouseOut="MM_nbGroup('out');" onMouseOver="MM_nbGroup('over','index_r2_c6','/EBOOK/Images/index_r2_c6_f2.jpg','/EBOOK/Images/index_r2_c6_f4.jpg',1);" onClick="MM_nbGroup('down','navbar1','index_r2_c6','/EBOOK/Images/index_r2_c6_f3.jpg',1);"><img name="index_r2_c6" src="/EBOOK/Images/index_r2_c6.jpg" width="180" height="35" border="0" alt=""></a></td>
   <td rowspan="2"><img name="index_r2_c7" src="/EBOOK/Images/index_r2_c7.jpg" width="51" height="41" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="35" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img name="index_r3_c2" src="/EBOOK/Images/index_r3_c2.jpg" width="180" height="6" border="0" alt=""></td>
   <td><img name="index_r3_c4" src="/EBOOK/Images/index_r3_c4.jpg" width="180" height="6" border="0" alt=""></td>
   <td><img name="index_r3_c6" src="/EBOOK/Images/index_r3_c6.jpg" width="180" height="6" border="0" alt=""></td>
   <td><img src="/EBOOK/Images/spacer.gif" width="1" height="6" border="0" alt=""></td>
  </tr>
</table>
    <table>
    <tr>
    <td rowspan="2"><iframe width="900" height="700" frameborder="0" align="middle" name="ebook" src="getdata.action"></iframe></td>
   <td><jsp:include page="date.html"></jsp:include></td></tr>
    <tr>
    <td><image src="/EBOOK/Images/hua.jpg"/></td>
	</tr>
	</table>
	<center><font color="blue" size="5">Copyroght &copy 2010 Powered by Power</font></center>
	</body>
</html>
