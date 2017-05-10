<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@	page import="com.model.UsersInfo" %>
<%@	page import="com.dao.Users" %>

<%
	request.setCharacterEncoding("utf-8");
	Users user=new Users();
	String keyword=request.getParameter("keyword");
	List<UsersInfo> listTmp=user.getList();
	String action=request.getParameter("action");
	if(session.getAttribute("name")==null){
		response.sendRedirect("/newBog/loginError.jsp");
	}
	else if("updataOK".equals(action)){
		%>"<script>alert('修改用户成功');window.location.href='users-manage.jsp';</script>"<%
	}
	else if("deleteOK".equals(action)){
		%>"<script>alert('删除用户成功');window.location.href='users-manage.jsp';</script>"<%
	}
	else if("deleteError".equals(action)){
		%>"<script>alert('修改用户失败');window.location.href='users-manage.jsp';</script>"<%
	}
%>
<body>
<div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
<p> 当前位置：用户管理</p>
<table width="98%" border="1">
	<tr>
		<td>用户名</td>
		<td>Email</td>
		<td>身份</td>
		<td>操作</td>
	</tr>
	<%
		for(UsersInfo info:listTmp){
	%>
	<tr>
		<td><%=info.getUsername() %></td>
		<td><%=info.getEmail() %></td>
		<td><%=info.getPower() %></td>
		<td>
			<a href="/newBog/userControl?username=<%=info.getUsername() %>&action=toEdit">编辑</a>|
			<a href="/newBog/userControl?username=<%=info.getUsername() %>&action=toDelete">删除</a>
		</td>
	</tr>
	<%
		}
	%>
</table>
</div>
</div>
</body>