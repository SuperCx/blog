<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@	page import="com.common.*" %>
<%@	page import="com.model.*" %>
<%@	page import="com.dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String action=request.getParameter("action");
	String pageAction="";
	UsersInfo info=new UsersInfo();
	Users user=new Users();
	String username="";
	String password="";
	String email="";
	
	if(session.getAttribute("user")!=null){
		info=(UsersInfo)session.getAttribute("user");
		username=info.getUsername();
		password=info.getPassword();
		email=info.getEmail();
		session.removeAttribute("user");
	}
	else{	
	}
	
%>
<body>
<div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
	<p>当前位置：用户编辑</p>
	<form id="form1" name="form1" method="post" action="/newBog/userControl?action=updata">
		<table width="100%" border="1">
			<tr>
				<td>用户名</td>
				<td><input type="text" name="username" id="txtUserName" width="500px" 
				value="<%=username %>" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password" id="txtPassword" width="500px" value="<%=password%>"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" id="txtEmail" width="500px" value="<%=email%>"/></td>
			</tr>
			<tr>
				<td>身份</td>
				<td>
					<select name="selPower">
						<option value="admin">管理员</option>
						<option value="user">普通用户</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
			<input type="submit" name="button" id="button" value="提交"/>
			<input type="reset" name="button2" id="button2" value="重置"/>
				</td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>







