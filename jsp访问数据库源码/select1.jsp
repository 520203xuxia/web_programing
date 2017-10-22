<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
	<body>
		<%
    		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/S2009100100?useUnicode=true&characterEncoding=utf-8","S2009100100","100100");
			Statement stat = conn.createStatement();
			String sql = "SELECT SNo, SName FROM student WHERE Sex='男' limit 0,5";
			ResultSet rs = stat.executeQuery(sql);
			while(rs.next()){
				String stuno = rs.getString("SNo");
				String stuname = rs.getString("SName");
				out.println(stuno + "  " + stuname + "<BR>");
			}
			stat.close();
			conn.close();
    %>
	</body>
</html>
