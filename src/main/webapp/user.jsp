<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Class.forName("org.mariadb.jdbc.Driver");
String url ="jdbc:mariadb://localhost:3306/kd";
String user ="root";
String password ="kd1824java";
	Connection con =DriverManager.getConnection(url,user,password);
	Statement stmt =con.createStatement();
	String sql ="SELECT *FROM user_INFO";
	ResultSet rs =stmt.executeQuery(sql);
	

%>
<table border="1">
		<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
		</tr>
		<%
		while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getInt("UI_NUM")+"</td>");
		out.println("<td>"+rs.getString("UI_ID")+"</td>");
		out.println("<td>"+rs.getString("UI_PWD")+"</td>");
		out.println("<td>"+rs.getString("UI_NAME")+"</td>");
		out.println("</tr>");
		}
		
		
		
		%>
		<tr>
		<td colspan="4" align="center"><button>확인</button>
		</tr>
		
</table>
</body>
</html>