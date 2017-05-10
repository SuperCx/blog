<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@	page import="com.model.*" %>
<%@	page import="com.dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Blog blogTmp=new Blog();
	String keyword=request.getParameter("keyword");
	String action=request.getParameter("action");
	List<BlogInfo> listTmp=blogTmp.getList(keyword);
	if((action!=null)&&"updataOk".equals(action)){
		%>"<script>alert('修改成功');window.location.href='blog-manage.jsp';</script>"<%
	}
	if((action!=null)&&"deleteOk".equals(action)){
		%>"<script>alert('删除成功');window.location.href='blog-manage.jsp';</script>"<%
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  <body>
  <div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
    <p>当前位置：日志管理</p>
    <form id="form1" name="form1" method="post"action="blog-manage.jsp">
    	请输入要查询的日志标题：
    	<input type="text" name="keyword" id="keyword" />
    	<input type="submit" name="button" id="button" value="查询" />
    </form>
    <table width="90%" border="1">
    	<tr>
    		<td>日志标题</td>
    		<td>所属分类</td>
    		<td>发布时间</td>
    		<td>操作</td>
    	</tr>
    	<%
    		for(BlogInfo info:listTmp){
    	%>
    	<tr>
    		<td><%=info.getTitle() %></td>
    		<td><%=info.getClassName() %></td>
    		<td><%=info.getCreatedtime() %></td>
    		<td>
    			<a href="/newBog/blogControl?id=<%=info.getId()%>&action=toUpdata">编辑</a>
    			|<a href="/newBog/blogControl?id=<%=info.getId()%>&action=toDelete">删除</a>
    			|<a href="../comment/comment-manage.jsp?blogid=<%=info.getId()%>">评论</a>
    		</td>
    	</tr>
    	<%
    		}
    	%>
    </table>
    </div>
    </div>
  </body>

