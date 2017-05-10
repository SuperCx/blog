<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@	page import="com.common.*" %>
<%@	page import="com.model.*" %>
<%@	page import="com.dao.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	String flag=request.getParameter("flag");
    if(flag!=null&&"userExit".equals(flag)){
    	%><script>alert('用户名已经存在');window.location.href='/newBog/register.jsp';</script>
    	<%
    }
    if(flag!=null&&"codeWrong".equals(flag)){
    	%><script>alert('邀请码错误');window.location.href='/newBog/register.jsp';</script>
    	<%
    }
%>

<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="content-type" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT"/>
<title>注册</title>
</head>
<body>
<div id="content" style="width:260px;margin:0 auto;">
<br>
<br>
<br>
<br>
<br>

<script language="javascript" type="text/javascript">
  		function check(){
  			if((document.formRegist.txtUserName.value=="")||(document.formRegist.txtPassword.value=="")||(document.formRegist.txtPassword2.value=="")||(document.formRegist.txtEmail.value=="")||(document.formRegist.code.value=="")){
  				alert("填完再提交好吗");
  				document.getElementById("txtPassword").value="";
  				document.getElementById("txtPassword2").value="";
  				return false;
  			}
  			if(document.formRegist.txtPassword.value!=document.formRegist.txtPassword2.value){
  				alert("两次密码不一致");
  				document.getElementById("txtPassword").value="";
  				document.getElementById("txtPassword2").value="";
  				return false;
  			}
  			var reg1 = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
  			if(!reg1.test(document.formRegist.txtEmail.value)){
  				alert("输入有效邮箱");
  				return false;
  			}
  			var reg2 = new RegExp("[\\s`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");
  			if((reg2.test(document.formRegist.txtUserName.value))||(reg2.test(document.formRegist.txtPassword.value))){
  				alert("不能包含特殊字符");
  				document.getElementById("txtPassword").value="";
  				document.getElementById("txtPassword2").value="";
  				document.getElementById("txtUserName").value="";
  				return false;
  			}
  		}
  		window.onload=function(){
  			document.getElementById("txtUserName").focus();
  			document.getElementById("txtPassword").value="";
  			document.getElementById("txtPassword2").value="";
  		}
  	</script> 

	<form id="formRegist" name="formRegist" action="/newBog/logControl?action=regist" method="post" onsubmit="return check()">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="txtUserName" id="txtUserName"/></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="txtPassword" id="txtPassword"/></td>
			</tr>
			<tr>
				<td>确认密码</td>
				<td><input type="password" name="txtPassword2" id="txtPassword2"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="txtEmail" id="txtEmail"/></td>
			</tr>
			<tr>
				<td>邀请码</td>
				<td><input type="text" name="code" id="code"/></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" name="button" id="button" value="提交"/>
					<input type="reset" name="button2" id="button2" value="重置"/>
					<input type="button" value="返回首页" onclick="window.location='/newBog/index.jsp'"/>
					<input type="button" value="直接登录" onclick="window.location='/newBog/login.jsp?flag=login'"/>
				</td>
				
			</tr>
		</table>
	</form>
</div>
</body>
