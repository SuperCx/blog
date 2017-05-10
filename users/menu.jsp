<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>博客管理系统后台</title>
  </head>
  <body>
  <div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
  <% if(session.getAttribute("name")!=null){%>
  	<br>
  	<h3>个人中心</h3>
   	<table width="256" border="0">	
   		<tr><td>欢迎您：<%=(String)session.getAttribute("name")%></td></tr>
   		<tr><td><a href="/newBog/blogControl?action=toAdd">发布日志</a></td></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr><td><a href="/newBog/blog/blog-manage.jsp">日志管理</a></td></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr><td><a href="/newBog/blogClassControl?action=toAdd">添加日志分类</a></td></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr><td><a href="/newBog/blogClass/class-manage.jsp?">日志分类管理</a></td></tr>
   		<tr></tr>
   		<tr></tr>
   		<tr><td><a href="/newBog/users/users-manage.jsp">用户管理</a></td></tr>
   	</table>
   	<%}
  else{
	  out.println("请先登录");
  }
   	%>
   	</div>
   	</div>
  </body>
</html>
