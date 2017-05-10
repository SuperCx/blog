<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@	page import="com.model.*" %>
<%@	page import="com.dao.*" %>
<%@	page import="com.common.*" %>
<%@page import="com.dao.Users" %>
<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Blog blog=new Blog();
	List<BlogInfo>list=blog.getList(null);
	ClassF cls=new ClassF();
	List<ClassInfo> clist=cls.getList();
	
%>
<img src="/newBog/images/head.jpg" />
<div style="width:30%;float:left;">
<div style="width:80%;background-color:#cccce0;float:left;">
<br>
<div id="sidebar">
		<ul>
			<li>
			<h2>功能导航</h2>
			<%if(session.getAttribute("name")==null) {%>
				<ul><li><a href="/newBog/login.jsp?flag=login">登录</a></li></ul>
				<br>
				<ul><li><a href="/newBog/register.jsp">注册</a></li></ul>
				<br>
				<%}
				else{%>
				<ul><li>欢迎您！<%=(String)session.getAttribute("name")%></li></ul>
				<br>
				<ul><li><a href="/newBog/users/menu.jsp">个人中心</a></li></ul>
				<br>
				<ul><li><a href="/newBog/login.jsp?flag=logoutAndReturn">注销</a></li></ul>
				<br>
				<%}
				%>
				<ul><li><a href="/newBog/blogControl?action=toAdd">发布日志</a></li></ul>
				<br>
				<ul><li><a href="/newBog/blog/blog-manage.jsp">日志管理</a></li></ul>
				<br>
				<ul><li><a href="/newBog/blogClassControl?action=toAdd">添加日志分类</a></li></ul>
				<br>
				<ul><li><a href="/newBog/blogClass/class-manage.jsp?">日志分类管理</a></li></ul>
				<br>
				<ul><li><a href="/newBog/users/users-manage.jsp">用户管理</a></li></ul>
				<br>
				<ul><li><a href="/newBog/index.jsp">返回首页</a></li></ul>
				<br>
			</li>
			<li>
				<h2>日志分类</h2>
				<ul>
					<%for(ClassInfo cinfo:clist){ %>
						<li>
							<a href="/newBog/blog/blog-list.jsp?classId=<%=cinfo.getId() %>">
							<%=cinfo.getName() %>
							</a>
						</li>
						<br>
						<%
					}
						%>
				</ul>
				
			</li>
			<li>
			<h2>关于作者</h2>
				<ul><li>&nbsp;&nbsp;me@chuxia1994.com</li></ul>
				<br>
				<ul><li>&nbsp;&nbsp;18696857376</li></ul>
				<br>
				<ul><li>&nbsp;&nbsp;<a href="/newBog/me.html">Introduction</a></li></ul>
			</li>
			<li>
			<h2>关于网站</h2>
				<ul><li>网站结构图</li></ul>
			</li>
		</ul>
	</div>
</div>
<div style="width:20%;background-color:#cccce0;float:left;"></div>
</div>
