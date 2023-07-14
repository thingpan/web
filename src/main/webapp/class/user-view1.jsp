<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String uiNumber = request.getParameter("uiNumber");
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT UI_NUMBER, UI_NICNAME,UI_EMAIL,UI_PHOMENUMER FROM USER_CASE";
	sql += " WHERE UI_NUM=" + uiNumber;
	ResultSet rs = stmt.executeQuery(sql);
	if (!rs.next()) {
	%>

	<script>
		alert("삭제 되었습니다");
		history.back();
	</script>
	<%
	return;
	}
	
	%>

		<table border="1">
			<tr>
				<th>아이디</th>
				<td><%=rs.getString("UI_NICNANE")%></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%=rs.getString("UI_EMAIL")%></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%=rs.getString("UI_PHOMENUMBER")%></td>
			</tr>

	<th colspan="2"><button>수정</button><button>삭제</button>
		</table>

</body>
</html>