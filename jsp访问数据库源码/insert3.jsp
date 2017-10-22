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
			String sql = "INSERT INTO student(SNo,CName,Sex) VALUES(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,stuno);
			ps.setString(2,stuname);
			ps.setString(3,stusex);
			int i = ps.executeUpdate();
			out.println("成功添加" + i + "行");
			ps.close();
			conn.close();
    %>
	</body>
</html>
