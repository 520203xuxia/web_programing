<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String stuno = request.getParameter("sno");
			String stuname = request.getParameter("name");
			String stusex = request.getParameter("sex");
    		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/S2009100100?useUnicode=true&characterEncoding=utf-8","S2009100100","100100");
			Statement stat = conn.createStatement();
			String sql = "INSERT INTO student(SNo,SName,Sex) VALUES('" +
							stuno+"','"+stuname + "','"+stusex+"')";
			int i = stat.executeUpdate(sql);
			out.println("成功添加" + i + "行");
			stat.close();
			conn.close();
    %>
	</body>
</html>
