<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/include/common.jsp"%>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<table border="1">
		<tr>
			<th>번호</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>폰번호</th>


			<th>
				<%
				Connection con = DBCon.getCon();
				Statement stmt = con.createStatement();
				String sql = "SELECT UI_NUMBER,UI_NICNAME,UI_EMAIL,UI_PHOMENUMER FROM USER_CASE";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
				%> 
		<tr>
		<td><%=rs.getString("UI_NUMBER")%>
			<td><%=rs.getString("UI_NICNAME")%>
			<td><%=rs.getString("UI_EMAIL")%>
			<td><%=rs.getString("UI_PHOMENUMER")%>
		</tr>

		<%
		}
		%>

		<tr>
			<td colspan="5" align="right">
			<button>등록</button><td>
		</tr>


	
	</table>


</body>
</html>