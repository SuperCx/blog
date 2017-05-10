<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <head>
    <title>ChuXia's Blog</title>
  </head>
<body>
	<div style="width:1100px;margin:0 auto;">
	<%@	include file="common/common-head.jsp" %>
	<div style="width:70%;float:left;">
	<div id="content">
		<%
			for(BlogInfo info:list){
		%>
		<div class="post">
			<h1 class="title"><a href="/newBog/blog/blog-information.jsp?id=<%=info.getId()%>"><%=info.getTitle() %></a></h1>
			<p class="byline"><%=info.getCreatedtime() %></p>
			<div class="entry">
				<p><%=Utilty.Substring(info.getContext(), 300) %></p>
			</div>
			<p class="meta"><a href="#" class="more">分类：<%=info.getClassName()%></a>&nbsp;&nbsp;&nbsp; 
				<a href="#" class="more">作者：<%=info.getUser() %></a>&nbsp;&nbsp;&nbsp; 
				<a href="/newBog/blog/blog-information.jsp?id=<%=info.getId()%>" class="comments">我要评论</a>
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