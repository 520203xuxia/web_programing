<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
	<body>
		<%
    		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/S2009100100?useUnicode=true&characterEncoding=utf-8","S2009100100","100100");
			Statement stat = conn.createStatement();
			String sql = "UPDATE student SET Sex='女' WHERE SNo='66'";
			int i = stat.executeUpdate(sql);
			out.println("成功修改" + i + "行");
			stat.close();
			conn.close();
    %>
	</body>
</html>
