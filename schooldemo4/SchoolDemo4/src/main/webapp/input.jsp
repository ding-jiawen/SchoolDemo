<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="UTF-8"%>
<html>
<head><title>学生信息录入</title></head>
<body>
<h1><center>添加学生信息</center></h1>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
%>
<form action="add.jsp" method="post" target="_self">
    <table border=1 align= "center" bgcolor="yellow">
        <tr>
            <td>学号</td>
            <td><label>
                <input name="id"  type="text" maxlength="20">
            </label></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><label>
                <input name="name"  type="text" maxlength="20">
            </label></td>
        </tr>
        <tr>
            <td>籍贯</td>
            <td>
                <label>
                    <select name="jiguan">
                        <option value="重庆">重庆</option>
                        <option value="北京">北京</option>
                        <option value="上海">上海</option>
                    </select>
                </label>
            </td>
        </tr>

        <tr>
            <td>系部</td>
            <td>
                <label>
                    <select name="department">
                    <option value="计算机系">计算机系</option>
                    <option value="管理系">管理系</option>
                    <option value="社科系">社科系</option>
                    </select>
                </label>
            </td>
        </tr>
        <tr>
            <td>性别</td>
            <td><label>
                <input name="sex" type="radio" value= "男" checked>
                </label>男
                <label>
                    <input name="sex" type="radio" value= "女">
                </label>女</td>
            </tr>
            <tr>
                <td>电话</td>
                <td><label>
                    <input name="tel"  type="text" maxlength="20">
                </label></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><label>
                    <input name="email"  type="text" maxlength="20">
                </label></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <input type="submit" name="Submit" value="添加">
                <input type="reset" name="reset" value="重置">
                </td>
            </tr>
</table>
</form>
</body>
</html>
