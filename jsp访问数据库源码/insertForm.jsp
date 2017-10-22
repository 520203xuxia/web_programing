<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<body>
		<form action="insert2.jsp" method="post">
			输入学号:<input type="text" name="sno"><BR>
			输入姓名:<input type="text" name="name"><BR>
			选择性别:
			<select name="sex">
				<option value="男">男</option>
				<option value="女">女</option>
			</select><BR>
			<input type="submit" value="提交">
		</form>
	</body>
</html>
