<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if(request.getParameter("flag").equals("logout")){
	session.invalidate();
}
else if(request.getParameter("flag").equals("logoutAndReturn")){
	session.invalidate();
	response.sendRedirect("index.jsp");
}else if(request.getParameter("flag").equals("registSuccess")){
	%><script>alert('注册成功');window.location.href='/newBog/login.jsp?flag=login';</script><%
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
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
  <div style="width:200px;margin:0 auto;">
  <br>
  <br>
  <br>
  <br>
  <br>
   <script language="javascript" type="text/javascript">
  		function check(form){
  			if(document.loginform.AdminName.value==""){
  				alert("请输入管理员名称");
  				document.loginform.AdminName.focuns();
  				return false;
  			}
  			if(document.loginform.Password.value==""){
  				alert("请输入密码");
  				document.loginform.Password.focuns();
  				return false;
  			}
  		}
  		window.onload=function(){
  			document.getElementById("AdminName").focus();
  			document.getElementById("AdminName").value="";
  			document.getElementById("Password").value="";
  		}
  	</script> 
    <form name="loginform" action="/newBog/logControl?action=login" method="post" onsubmit="return check(this)">
    <table>
    	<tr><td colspan="2" align="center">用户登录</td></tr>
    	<tr><td><input name="AdminName" type="text" /></td></tr>
    	<tr><td><input name="Password" type="password" /></td></tr>
    	<tr><td colspan="3"><input type="submit" value="登陆"/><input type="button" value="注册" onclick="window.location='/newBog/register.jsp'"/><input type="button" value="返回首页" onclick="window.location='/newBog/index.jsp'"/></td></tr>
    </table>
    </form>
    </div>
  </body>

