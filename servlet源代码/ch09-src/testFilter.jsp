<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%  //服务器端Java代码
	String account= request.getParameter("account");
	String password = request.getParameter("password");
	
	if("yu".equals(account) && "123456".equals(password)){
		session.setAttribute("account", account);
	}
	else if(account!=null || password != null){
		out.println("<font color='red'>用户名或密码错误</font>");
	}
	
%>

<html>  
<body>
   		<form method="post">
   			帐号：<input type="text" name="account"><br>
   			密码：<input type="password" name="password"><br>
   			<input type="submit" value="提交">
   		</form>
 </body>
</html>
