<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.Users" %>
<%@page import="com.model.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.common.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String action=request.getParameter("action");
	String pageAction="add";
	int id=-1;
	String name="";
	int sort=0;
	if("updataOk".equals(action)){
		%>"<script>alert('修改日志分类成功');window.location.href='class-manage.jsp';</script>"<%
	}
	else if("addOk".equals(action)){
		%>"<script>alert('增加日志分类成功');window.location.href='class-edit.jsp';</script>"<%
	}
	else if("deleteOk".equals(action)){
		%>"<script>alert('删除日志分类成功');window.location.href='class-manage.jsp';</script>"<%
	}
	else if("toEdit".equals(action)){
		pageAction="updata";
	}
	if(session.getAttribute("classInfo")!=null){
		name=((ClassInfo)(session.getAttribute("classInfo"))).getName();
		sort=((ClassInfo)(session.getAttribute("classInfo"))).getSort();
		id=((ClassInfo)(session.getAttribute("classInfo"))).getId();
		session.removeAttribute("classInfo");
	}
%>
<body>
<div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
<p>当前位置：分类编辑</p>
<form id="form1" name="form1" method="post" action="/newBog/blogClassControl?id=<%=id %>&action=<%=pageAction%>">
<table>
<tr>
	<td>分类名称</td>
	<td>
		<input type="text" name="txtName" id="txtName" value="<%=name %>" />
	</td>
</tr>
<tr>
	<td>排序</td>
	<td>
		<input type="text" name="txtSort" id="txtSort" value="<%=sort %>" />
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" name="button" id="button" value="提交" />
		<input type="reset" name="button2" id="button2" value="重置" />
	</td>
</tr>

</table>
</form>
</div>
</div>
</body>
