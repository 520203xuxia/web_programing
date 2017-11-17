<%@ page language="java" pageEncoding="UTF-8"%>
<html>  
<body>
   		<%
   			String account = (String)session.getAttribute("account");
   			out.println(account.length());
   		 %>
  </body>
</html>
