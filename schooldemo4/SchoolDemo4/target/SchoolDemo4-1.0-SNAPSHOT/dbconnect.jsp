<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
    String url="jdbc:mysql://localhost:3306/db01?characterEncoding=UTF-8";
String user="root";
String password="123";
Connection conn;
    try {
        conn=DriverManager.getConnection(url, user, password);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    out.print("数据库连接成功");%>
