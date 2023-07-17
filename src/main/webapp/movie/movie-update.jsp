<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세화면</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<%
	String miNum = request.getParameter("miNum");
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELECT MI_NUM,MI_TITLE,MI_DESC,MI_GENRE,MI_CREDAT,MI_CNT";
	sql += "WHERE MI_NUM=" + miNum;
	ResultSet rs = stmt.executeQuery(sql);
	if (!rs.next()) {
	%>
	<script>
		alert("이미 삭제된 게시물입니다");
		history.back();
	</script>
	<%
	return;
	}

	String miTitle = rs.getString("MI_TITLE");
	out.println(miTitle);
	%>
	<form action="<%=root%>/movie/movie-update-ok.jsp">
		<input type="hidden" name="miNum" value="<%=miNum%>">;

		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" id="miTitle" name="miTitle"
					value="<%=rs.getString("MI_TITLE")%>"></td>
			<tr>
				<th>설명</th>
				<td><input type="text" id="miDesc" name="miDesc"
					value="<%=rs.getString("MI_DESC")%>"></td>
			<tr>
				<th>장르</th>
				<td><input type="text" id="miGenre" name="miGenre"
					value="<%=rs.getString("MI_GENRE")%>"></td>
			<tr>
				<th>상영일</th>
				<td><input type="text" id="miCredat" name="miCredat"
					value="<%=rs.getString("MI_CREDAT")%>"></td>
			<tr>
				<th>관객수</th>
				<td><input type="text" id="miCnt" name="miCnt"
					value="<%=rs.getString("MI_CNT")%>"></td>
					<tr>
					<th colspan="2"><button>수정</button>
					<button>삭제</button>
		</table>

	</form>







	%>

</body>
</html>