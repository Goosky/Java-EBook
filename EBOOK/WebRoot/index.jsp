<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*,java.text.*" pageEncoding="gb2312"%>
<%
request.setCharacterEncoding("gb2312");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = request.getParameter("username");
//request.setAttribute("username",username);
session.setAttribute("username",username);
Date now = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss(a)(EE)");
String nowtime = sdf.format(now);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Welcome EBOOK</title>
<script type="text/javascript" src="/EBOOK/Images/jquery.js"></script>
<script type="text/javascript" src="/EBOOK/Images/jquery.timers.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
  var imgobj = $("#pic li a img");
  var img0 = imgobj[0].src;
  var text0 = imgobj[0].title;
  var imgIndex = 0;

  $("#text").html(text0);
  var numul = "";
  for(var i=0;i<imgobj.length;i++){
   if(i==0){
    numul +="<li class='on'>"+(i+1)+"</li>";
   }else{
    numul +="<li>"+(i+1)+"</li>";
   }
  };
  $("#num").html(numul);

  var numobj = $("#num li");

  $("#num li").click(function(){
   var liobj = $(this);
   $("#num li").removeClass();
   liobj.addClass("on");
   changeImg(liobj.text()-1);
   imgIndex = liobj.text()-1;
   $(document).stopTime();
   $(document).everyTime(3000, every);
  });

  $(this).everyTime(3000, every);

  function changeImg(index){

   if(index == 0){
    $(imgobj[0]).attr({src:img0,title:text0}).css({opacity: 0.1}).animate({opacity: 1.0},1000);
   }else{
    $(imgobj[0]).attr({src:$(imgobj[index]).attr("src"),title:$(imgobj[index]).attr("title")}).css({opacity: 0.1}).animate({opacity: 1.0},1000);
   }
   $("#text").html($(imgobj[0]).attr("title"));
  }

  function every(){
   imgIndex = (imgIndex+1)%imgobj.length;
   numobj.removeClass();
   $(numobj[imgIndex]).addClass("on");

   changeImg(imgIndex);
  }


 });


</script>
<style type="text/css">
 *
 {
  margin:0;
  padding:0;
 }
 img,img a
 {
  border:0;
 }
 body
 {
	height:600px;
	background-image: url(/EBOOK/Images/back.jpg);
	background-repeat: no-repeat;
 }
  .focus
  {
   width:800px;
   height:360px; 
   position:relative;
   border:1px solid #D8D9DA;
  }
 .newindex_flash_bt
 {
  width:500%;
  height:35px;
  position:absolute;
  bottom:0px;
  left:0px;
  background:#000;
  -moz-opacity:0.5; 
  filter:alpha(opacity=50);
  z-index:1;
 }

 .newindex_flash_btfont
 {
  width:90%;
  height:35px;
  position:absolute;
  bottom:0px;
  left:10px;
  z-index:2; 
  color:#fff;
  padding:0px 30px 0px 50px; 
  background:url(/images/foc.gif) no-repeat 0px 10px;
  line-height:33px;
  font-weight:bold;
 }
 .newindex_flash_btfont a
 {
  color:#fff;
 }
 .newindex_flash_btfont a:visited
 {
  color:#fff;
 }
 .newindex_flash_btfont span
 {
  margin-left:15px;
 }

 .container, .container img
 {
  width:800px;
  height:360px;
 }
 .container
 {
  border:0px solid #333;
 }
 .container img
 {
  border:0;
 }
 .bottom
 {
  position:absolute; 
  bottom:0px;
  width:800px;
  filter: Alpha(Opacity=60);
    opacity: 0.6;  
    background-color:#000;
    height:30px;
    line-height:30px;
 }
 .text
 {
  float:left;
  padding-left:5px;
  font-size:14px;
  color:#fff !important
 }
 .num
 { 
  float:right;
  padding-right:5px;
  margin:5px;
 }
 .num li
 {
  float:left;
  list-style:none;
  color: #fff;
  text-align: center;
  line-height: 16px;
  width: 16px;
  height: 16px;
  font-family: Arial;
  font-size: 12px;
  cursor: pointer;
  margin:1px;
  border: 1px solid #707070;
  background-color: #000;
 }
 .num li.on
 { 
  line-height: 18px;
  width: 18px;
  height: 18px;
  font-size: 14px;
  border: 0;
  background-color: #FEC702; 
  font-weight: bold;
 }
 .pic
 {
  width:800px;
  height:360px;
  overflow:hidden;
 }
 .pic li
 {
  list-style:none;
 }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<img src="/EBOOK/Images/index.gif" width="136" height="98" alt="Welcome EBOOK" title="Welcome EBOOK"/>
<img src="/EBOOK/Images/lead.jpg" alt="" width="287" height="31" border="0" usemap="#Map"/>
<map name="Map">
  <area shape="rect" coords="3,5,33,28" href="/EBOOK/login/login.jsp">
  <area shape="rect" coords="49,8,82,26" href="/EBOOK/login/signup.jsp">
  <area shape="rect" coords="218,7,283,25" href="/EBOOK/help.html">
  <area shape="rect" coords="103,6,197,27" href="view.action">
</map>
<div class="focus" style="left:200px;top:0px;">
  <div class="container" id="idContainer2">
   <ul class="pic" id="pic">
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/1.jpg" alt="Welcome EBOOK" width="00px" height="360px" title="欢迎来到EBOOK，这里有更丰富的图书管理和规划方案>>>" />
     </a>
    </li>
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/2.jpg" alt="Welcome EBOOK" width="400px" height="360px" title="还在为您的大量书目没法管理忧虑吗？这是你的选择>>>" />
     </a>
    </li>
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/3.jpg" alt="Welcome EBOOK width="400px" height="360px" title="还在为读书，再忘书恐惧吗？您可以在这里记下您的读书笔记>>>" />
     </a>
    </li>
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/4.jpg" alt="Welcome EBOOK" width="400px" height="360px" title="来到这里，让您的学习变得更加简单>>>" />
     </a>
    </li>
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/5.jpg" alt="Welcome EBOOK" width="400px" height="360px" title="相信吗？有了EBOOK您的生活会更丰富>>>" />
     </a>
    </li>
    <li>
     <a href="" target="_blank">
      <img src="/EBOOK/Images/6.jpg" alt="Welcome EBOOK"  width="400px" height="360px" title="欢迎来到EBOOK，这里有更丰富的图书管理和规划方案>>>" />
     </a>
    </li>
   </ul>

   <div class="bottom">
    <div class="text" id="text"></div>
      <ul class="num" id="num">
      </ul>
     <div style="clear:both;"></div>
    </div>
  </div>
</div>
<center><font color="blue" size="5">Copyroght &copy 2010 Powered by EBOOK Ghalibux</font></center>
</body>
</html>

