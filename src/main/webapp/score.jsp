<%@ page import="com.sun.java.swing.plaf.windows.resources.windows" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: 86183
  Date: 2023/10/12
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试成绩</title>
</head>
<body>
欢迎您，
<%=request.getParameter("test-person")%><br>
班级
<%=request.getParameter("choose-class")%><br>

<%
    // 获取选项
    String t1 = request.getParameter("t1");
    String t2 = request.getParameter("t2");
    String t3 = request.getParameter("t3");
    String t4 = request.getParameter("t4");
    String[] test5 = request.getParameterValues("t5");
    String[] test6 = request.getParameterValues("t6");
    // 统计分数
    int score = 0;

    // 不选和选错 0分
    if(t1 != null && t1.equals("B")) score += 15;
    if(t2 != null && t2.equals("A")) score += 15;
    if(t3 != null && t3.equals("C")) score += 15;
    if(t4 != null && t4.equals("C")) score += 15;

    StringBuilder temp = new StringBuilder();
    if(test5 != null){
        for (int i = 0; i < test5.length; i++) {
            temp.append(test5[i]);
        }
        String answer = String.valueOf(temp);
        if(answer.equals("AB")) {
            score += 20;
        }else if(answer.contains("C") || answer.contains("D")){}else{
            score += 10;
        }
    }


    StringBuilder temp1 = new StringBuilder();
    if(test6 != null){
        for (int i = 0; i < test6.length; i++) {
            temp1.append(test6[i]);
        }
        String answer2 = String.valueOf(temp1);
        if(answer2.equals("BC")) {
            score += 20;
        }else if(answer2.contains("A") || answer2.contains("D")){}else{
            score += 10;
        }
    }
%>
<h3>您本次的测试成绩是</h3>
<%
    out.print(score);
%>
</body>
</html>
