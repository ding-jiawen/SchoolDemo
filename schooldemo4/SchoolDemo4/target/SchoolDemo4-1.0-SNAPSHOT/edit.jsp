<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head><title>学生信息修改</title></head>
<body>
<%@include file="dbconnect.jsp" %>
<%  Statement st = null;
    ResultSet rs = null;
    String xueHao = null;
    String name = null;
    String tel = null;
    String email = null;
    System.out.println(xueHao);
    System.out.println(name);
    System.out.println(tel);
    System.out.println(email);
    String id=request.getParameter("id");
    try {
        st=conn.createStatement();
        String sql="SELECT *FROM student where id="+id;
        System.out.println(sql);
        rs=st.executeQuery(sql);
        rs.next();
        xueHao = rs.getString("id");
        name = rs.getString("name");
        tel = rs.getString("tel");
        email = rs.getString("e_mail");
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>

<h1>
    <center>修改学生信息</center>
</h1>
<form action="editSubmit.jsp" method="post" target="_self">
    <table border=1 align="center" bgcolor="yellow">
        <tr>
            <td>学号</td>
            <td><label>
                <input name="id" value="<%=xueHao%>" type="text" maxlength="20">
            </label></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><label>
                <input name="name" value="<%=name%>" type="text" maxlength="20">
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
                    <select name="dep">
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
                <input name="sex" type="radio" value="男" checked>
            </label>男
                <label>
                    <input name="sex" type="radio" value="女">
                </label>女
            </td>
        </tr>
        <tr>
            <td>电话</td>
            <td><label>
                <input name="tel" value="<%=tel%>" type="text" maxlength="20">
            </label></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><label>
                <input name="email" value="<%=email%>" type="text" maxlength="20">
            </label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="Submit" value="修改">
                <input type="reset" name="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>
