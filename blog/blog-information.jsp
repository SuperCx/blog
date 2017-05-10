<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	Blog blogRight=new Blog();
	int id=DataConverter.toInt(request.getParameter("id"));
	BlogInfo info=blogRight.getBlogInfo(id);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'blog-information.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
  <div style="width:1100px;margin:0 auto;">
	<%@	include file="../common/common-head.jsp" %>
	<div style="width:50%;float:left;">
    <div id="content">
    	<div class="post">
    	
    		<h1 class="title"><%=info.getTitle() %></h1>
    		<p class="byline"><%=info.getCreatedtime() %></p>
    		<div class="entry">
    			<p><%=info.getContext() %></p>
    		</div>
    		<p class="meta"><a href="#" class="more">分类：<%=info.getClassName() %></a></p>
    		<p class="meta"><a href="#" class="more">作者：<%=info.getUser() %></a></p>
    	</div>
    	<a name="comment" id="comment"></a>
    	<p class="meta">评论：</p><br>
    	<%
    		Comment comment=new Comment();
    		List<CommentInfo> cmlistRight=comment.getListByBlogId(id);
    		for(CommentInfo cminfo:cmlistRight){
    			out.println(cminfo.getContext()+"<br>");
    			out.println(cminfo.getCreatedtime()+"&nbsp;&nbsp;&nbsp;&nbsp;"+cminfo.getUsername()+"<br><hr>");
    		}
    		if(session.getAttribute("name")==null){
    	%>
    		<br>发表评论请先<a href="/newBog/login.jsp?flag=login">登录</a>
    	<%
    		}
    		else{
    			%>
	    		<form name="commentForm" method="post" action="/newBog/commentControl?action=insert">
				<input name="id" type="hidden" value="<%=request.getParameter("id") %>" />
				<textarea rows="4" cols="50" name="txtContext"></textarea>
				<input type="submit" name="button" value="回复" />
				</form>
    			<%
    		}
    	%>
        
    </div> 
  </div>
  </div>
  </body>
</html>
