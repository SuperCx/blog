<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.Users" %>
<%@page import="com.model.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.common.*" %>
<%
	request.setCharacterEncoding("utf-8");
	ClassF clsTmp=new ClassF();
	String keyword=request.getParameter("keyword");
	List<ClassInfo> listTmp=clsTmp.getList();
%>
<body>
<div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
<p>当前位置：分类管理</p>
<table>
	<tr>
		<td>名称</td>
		<td>排序</td>
		<td>操作</td>
	</tr>
	<%
		for(ClassInfo info:listTmp){
	%>
	<tr>
		<td><%=info.getName() %></td>
		<td><%=info.getSort() %></td>
		<td>
			<a href="/newBog/blogClassControl?id=<%=info.getId() %>&action=toUpdata">编辑</a>
			<a href="/newBog/blogClassControl?id=<%=info.getId() %>&action=toDelete">删除</a>
		</td>
	</tr>
	<%
		}
	%>
</table>
</div>
</div>
</body>