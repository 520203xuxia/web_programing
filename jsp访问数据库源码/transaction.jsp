<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
	<body>
		<%
			Connection conn = null;
			try{
    		Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/S2009100100?useUnicode=true&characterEncoding=utf-8","S2009100100","100100");
				Statement stat = conn.createStatement();
				conn.setAutoCommit(false);//设置为不要自动提交
				String sql1 = "UPDATE ...";
				String sql2 = "UPDATE ...";
				stat.executeUpdate(sql1);
				stat.executeUpdate(sql2);
				conn.commit();	//提交以上操作			
			}
			catch(Exception ex){
				conn.rollback();		//回退
			}
			finally{
				conn.close();
			}			
    %>
	</body>
</html>
