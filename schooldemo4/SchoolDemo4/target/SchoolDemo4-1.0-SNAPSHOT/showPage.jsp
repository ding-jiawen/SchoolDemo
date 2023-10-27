
<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 86183
  Date: 2023/10/26
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="dbconnect.jsp" %>
<table border="1" align="center" style="border-style: solid">
<tr>
    <td>学号</td>
    <td>姓名</td>
    <td>籍贯</td>
    <td>所属系部</td>
    <td>性别</td>
    <td>联系电话</td>
    <td>E_mail</td>
</tr>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    int totalPage = 0; // 总页数
    int lineCount = 0; // 查询总行数
    int pageNow = 1; // 当前页数
    int pageSize = 2; // 一个页面存放记录数

    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=UTF-8");

    String selectItem = request.getParameter("select-item");
    String text = request.getParameter("text");
    String sPageNow = request.getParameter("pageNow"); // 点击下一页刷新当前页数
    if(sPageNow!=null){
        pageNow = Integer.parseInt(sPageNow);
    }
    out.println("\n" + pageNow);
    if(selectItem == null || text == null) {
        selectItem = "";
        text = "";
    }
    Statement statement = null;
    ResultSet rs = null;

    // 总页数
    try {
        String sqlTotalPage = "select count(*) from student";
        PreparedStatement pst = conn.prepareStatement(sqlTotalPage);
        rs = pst.executeQuery();
        if(rs != null) {
            rs.next();
            lineCount = rs.getInt(1);
        }
        totalPage = lineCount % pageSize == 0 ? (lineCount / pageSize) : (lineCount / pageSize + 1);
    } catch (SQLException e) {
        e.printStackTrace();
    }
    // 模糊分页查询
    try {
        String sql = "select * from student where " + selectItem + " like '%"+text+"%' limit ?, ?";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        out.println(sql);
        int index = (pageNow - 1) * pageSize;
        out.println("\n" + index);
        preparedStatement.setInt(1, index);
        preparedStatement.setInt(2, pageSize);
        rs =preparedStatement.executeQuery();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    try {
        while(rs!=null && rs.next()) {
%>
<tr>
    <td><%=rs.getString("id")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("jiguan")%></td>
    <td><%=rs.getString("department")%></td>
    <td><%=rs.getString("sex")%></td>
    <td><%=rs.getString("tel")%></td>
    <td><%=rs.getString("e_mail")%></td>
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

<form action="showPage.jsp" method="post">
    <table  border="1" align="center" style="border-style: solid">
        <tr>
            <td><a href="showPage.jsp?pageNow=1&select-item=<%=selectItem%>&text=<%=text%>">首页</a></td>
            <%
                if(pageNow > 1){
            %>
            <td><a href="showPage.jsp?pageNow=<%=pageNow-1%>&select-item=<%=selectItem%>&text=<%=text%>">上一页</a></td>
            <%}%>

            <%
                if(pageNow < totalPage){
            %>
            <td><a href="showPage.jsp?pageNow=<%=pageNow+1%>&select-item=<%=selectItem%>&text=<%=text%>">下一页</a> </td>
            <%} else {%>
            <td><a href="showPage.jsp?pageNow=<%=pageNow%>&select-item=<%=selectItem%>&text=<%=text%>">已经是最后一页</a></td>
            <%}%>

            <%
                if(pageNow < totalPage){
            %>
            <td><a href="showPage.jsp?pageNow=<%=totalPage%>&select-item=<%=selectItem%>&text=<%=text%>">尾页</a> </td>
            <%} else {%>
            <td><a href="showPage.jsp?pageNow=<%=totalPage%>&select-item=<%=selectItem%>&text=<%=text%>">尾页</a></td>
            <%}%>
        </tr>
    </table>
</form>

</body>
</html>
