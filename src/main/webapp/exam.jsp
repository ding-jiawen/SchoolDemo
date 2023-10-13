<%--
  Created by IntelliJ IDEA.
  User: 86183
  Date: 2023/10/12
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面</title>
</head>
<body>
<h3 style="text-align: center">jsp测试题</h3>
<form action="score.jsp" method="GET">
    <label>
        测试人：<input type="text" name="test-person">
    </label>
    <br>
    <label>
        班级：
        <select name="choose-class">
            <option value="21本软件1班">21本软件1班</option>
        </select>
    </label>
    <hr>

    <p>一、单选题（每题20分，共80分）</p>
    1.response对象的setHeader（String name,String value）方法的作用是<br>
    <label><input type="radio" name="t1" value="A">A.HTTP文件头</label><br>
    <label><input type="radio" name="t1" value="B">A.设定指定名字的HTTP文件头的值</label><br>
    <label><input type="radio" name="t1" value="C">A.指定名字的HTTP文件头是否存在</label><br>
    <label><input type="radio" name="t1" value="D">A.向客户端发送错误信息</label><br>
    <br>
    2.设置session的有效时间（也叫超时时间）的方法是()<br>
    <label><input type="radio" name="t2" value="A">A.setMaxInactiveInterval(int interval)</label><br>
    <label><input type="radio" name="t2" value="B">B.getAttributeName()</label><br>
    <label><input type="radio" name="t2" value="C">C.set AttributeName(String name,Java.lang.Object value)</label><br>
    <label><input type="radio" name="t2" value="D">D.getLastAccessedTime()</label><br>
    <br>
    3.能清除缓冲区中的数据◇并且把数据输出到客户端是out对象中的方法是()<br>
    <label><input type="radio" name="t3" value="A">A.out.newLine()</label><br>
    <label><input type="radio" name="t3" value="B">B.out.clear()</label><br>
    <label><input type="radio" name="t3" value="C">C.out.flush()</label><br>
    <label><input type="radio" name="t3" value="D">D.out.clearBuffer()</label><br>
    <br>
    4.pageContext对象的findAttribute()方法作用是()<br>
    <label><input type="radio" name="t4" value="A">A.用来设置默认页面的范围或指定范围之中的已命名对象</label><br>
    <label><input type="radio" name="t4" value="B">B.用来删除默认页面范围或指定范围之中已命名的对象</label><br>
    <label><input type="radio" name="t4" value="C">C.按照页面请求、会话以及应用程序范围的顺序实现对某个已命名属性的搜索</label><br>
    <label><input type="radio" name="t4" value="D">D.以字符串的形式返回一个对异常的描述</label><br>
    <br>

    <p>二、多选题（每题20分，共20分）</p>
    1.1+1=()<br>
    <label><input type="checkbox" name="t5" value="A">A.2</label><br>
    <label><input type="checkbox" name="t5" value="B">B.2</label><br>
    <label><input type="checkbox" name="t5" value="C">C.11</label><br>
    <label><input type="checkbox" name="t5" value="D">D.0</label><br>

    2.2+2=()<br>
    <label><input type="checkbox" name="t6" value="A">A.2</label><br>
    <label><input type="checkbox" name="t6" value="B">B.4</label><br>
    <label><input type="checkbox" name="t6" value="C">C.4</label><br>
    <label><input type="checkbox" name="t6" value="D">D.7</label><br>

    <input type="submit" value="交卷">
</form>
</body>
</html>
