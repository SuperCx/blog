<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.Users" %>
<%@page import="com.model.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.common.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Comment comment=new Comment();
	String keyword=request.getParameter("keyword");
	int blogid=DataConverter.toInt(request.getParameter("blogid"));
	List<CommentInfo> listTmp=comment.getListByBlogId(blogid);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'comment-manage.jsp' starting page</title>
  </head>  
  <body>
   <div style="width:1100px;background-color:#333;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:50%;float:left;">
   	<p>当前位置：评论管理</p>
   	<table width="1000">
   		<tr>
   			<td>评论内容</td>
   			<td>评论人</td>
   			<td>评论时间</td>
   			<td>操作</td>
   		</tr>
   		<%
   			for(CommentInfo info:listTmp){
   		%>
   		<tr>
   			<td width="400"><%=Utilty.Substring(info.getContext(), 100) %></td>
   			<td width="100"><%=info.getUsername() %></td>
   			<td width="60"><%=info.getCreatedtime() %></td>
   			<td width="300">
   				<a href="/newBog/commentControl?action=delete&&id=<%=info.getId() %>&&blogid=<%=info.getBlogid() %>">删除</a>
   			</td>
   		</tr>
   		<%
   			}
   		%>
   	</table>
   	</div>
   	</div>
  </body>
</html> 