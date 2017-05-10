<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.Users" %>
<%@page import="com.model.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.common.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String action=request.getParameter("action");
	String pageAction="add";
	int id=-1;
	BlogInfo info=new BlogInfo();
	Blog blogTmp=new Blog();
	ClassF clsTmp=new ClassF();
	List<ClassInfo> listTmp=clsTmp.getList();
	String title="";
	String context="";
	if("toEdit".equals(action)){
		pageAction="updata";
	}
	if("addOk".equals(action)){
		%>"<script>alert('发布成功');window.location.href='blog-edit.jsp?action=add';</script>"<%
	}
	if(session.getAttribute("bloginfo")!=null){
		title=((BlogInfo)(session.getAttribute("bloginfo"))).getTitle();
		context=((BlogInfo)(session.getAttribute("bloginfo"))).getContext();		
		id=((BlogInfo)(session.getAttribute("bloginfo"))).getId();
		session.removeAttribute("bloginfo");
	}
%>
  <body>
  <div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:70%;float:left;">
    <p>当前位置：日志编辑</p>
    <form id="form1" name="form1" method="post" action="/newBog/blogControl?id=<%=id%>&&action=<%=pageAction%>">
    	<table>
    		<tr>
    		<td>标题</td>
    		<td><input type="text" name="txtTitle" id="txtTitle" width="500px" value="<%=title %>" /></td>
    		</tr>
    		<tr>
    		<td>分类</td>
    		<td>
    		<select name="selClass" id="selClass">
    			<%
    				for(ClassInfo cinfo:listTmp){
    			%>
    			<option value="<%=cinfo.getId() %>"
    			<%if(cinfo.getId()==info.getClassid())out.print("selected"); %>>
    			<%=cinfo.getName() %></option>
    			<%
    				}
    			%>    			
    		</select>
    		</td>
    		</tr>
    		<tr>
    			<td>内容</td>
    			 <td><textarea rows="4" cols="100" name="content"><%=context %></textarea> </td>
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
