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
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String sex=request.getParameter("sex");
    String jiguan=request.getParameter("jiguan");
    String dep=request.getParameter("department");
    String tel=request.getParameter("tel");
    String email=request.getParameter("email");
    String sql="insert into student values(?,?,?,?,?,?,?)";
    PreparedStatement pst = null;
    try {
        pst=conn.prepareStatement(sql);
        pst.setString(1,id);
        pst.setString(2,name);
        pst.setString(3,jiguan);
        pst.setString(4,dep);
        pst.setString(5,sex);
        pst.setString(6,tel);
        pst.setString(7,email);

        int i = pst.executeUpdate(); // 受影响行数
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(pst != null) pst.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
response.sendRedirect("list.jsp");
%>
</body>
</html>