<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.Users" %>
<%@page import="com.model.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.common.*" %>
<%
	Blog blogRight=new Blog();
	int classId=DataConverter.toInt(request.getParameter("classId"));
	List<BlogInfo> listRight=blogRight.getListByClassId(classId);
	//获得日志分类
	ClassF clsRight=new ClassF();
	List<ClassInfo> clistRight=clsRight.getList();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>日志分类</title>

  </head>
  
  <body>
  <div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:50%;float:left;">
    <div id="content">
    	<%
    		for(BlogInfo info:listRight){
    	%>
    	<div class="post">
    		<h1 class="title"><a href="/newBog/blog/blog-information.jsp?id=<%=info.getId()%>"><%=info.getTitle() %></a></h1>
    		<p class="byline"><%=info.getCreatedtime() %></p>
    		<div class="entry">
    			<p><%=Utilty.Substring(info.getContext(), 300) %>
    		</div>
    		<p class="meta"><a href="#" class="more">分类：<%=info.getClassName() %></a>
    			&nbsp;&nbsp;&nbsp;<a href="#" class="more">详情</a>&nbsp;&nbsp;&nbsp;
    		</p>
    	</div>
    	<%
    		}
    	%>
    </div>
  </div>
  </div>
  </body>
</html>
