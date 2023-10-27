<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="dbconnect.jsp" %>
<h1 align="center">学生信息表</h1>
<a href="input.jsp">新增</a>
<form action="edit.jsp" method="post">
	<table border="1" align="center">
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>籍贯</td>
			<td>所属系部</td>
			<td>联系电话</td>
			<td>E_mail</td>
			<td>操作</td>

		</tr>
		<%
			Statement statement = null;
			ResultSet rs = null;
			try {
				statement = conn.createStatement();
				String sql = "select * from student";
				rs = statement.executeQuery(sql);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				while(rs!=null && rs.next()) {
					String id = rs.getString("id");
					String name = rs.getString("name");
					String jiguan = rs.getString("jiguan");
					String department = rs.getString("department");
					String sex = rs.getString("sex");
					String tel = rs.getString("tel");
					String email = rs.getString("e_mail");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td><%=sex%></td>
			<td><%=jiguan%></td>
			<td><%=department%></td>
			<td><%=tel%></td>
			<td><%=email%></td>
			<td><a href="edit.jsp?id=<%=id%>">修改</a> <a href="">删除</a></td>
		</tr>
		<%
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try{
					if(statement != null) statement.close();
					if(rs != null) rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		%>
	</table>
</form>

</body>
</html>