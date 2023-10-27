<%--
  Created by IntelliJ IDEA.
  User: 86183
  Date: 2023/10/26
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="dbconnect.jsp" %>

<form action="showPage.jsp" method="post">
    <label>
        <select name="select-item">查询条件
            <option value="id">学号</option>
            <option value="name">姓名</option>
            <option value="department">系部</option>
            <option value="sex">性别</option>
        </select>
    </label>
    <label>
        <input type="text" name="text">
        <input type="submit" value="查询">
    </label>
</form>

</body>
</html>
