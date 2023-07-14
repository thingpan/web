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
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>


			<th>
				<%
				Connection con = DBCon.getCon();
				Statement stmt = con.createStatement();
				String sql = "SELECT UI_NUM,UI_ID,UI_PWD,UI_NAME FROM USER_INFO";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
				%> 
		<tr>
		<td><%=rs.getString("UI_NUM")%></td>
			<td><%=rs.getString("UI_ID")%></td>
			<td><%=rs.getString("UI_PWD")%></td>
			<td><a href="<%=root%>/user/user-view.jsp?uiNum=<%=rs.getInt("UI_NUM")%>"><%=rs.getString("UI_NAME")%></a></td>
		</tr>

		<%
		}
		%>




	
	</table>

</body>
</html>