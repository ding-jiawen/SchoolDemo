<%--
  Created by IntelliJ IDEA.
  User: 86183
  Date: 2023/10/27
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
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
    String sql="update student set name = ?, sex = ?, jiguan = ?, department = ?, tel = ?, e_mail = ? where id = ?";
    PreparedStatement pst = null;
    try {
      pst=conn.prepareStatement(sql);
      pst.setString(1,name);
      pst.setString(2,sex);
      pst.setString(3,jiguan);
      pst.setString(4,dep);
      pst.setString(5,tel);
      pst.setString(6,email);
      pst.setString(7,id);

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
