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
<title>게시물등록</title>
</head>
	
<body>
	
	<jsp:include page="/include/header.jsp" />
	<%
	String bititle = request.getParameter("biTitle");
	if (bititle != null && !bititle.isEmpty()) {
		String bicontent = request.getParameter("biContent");
		String biwriter = request.getParameter("biWriter");

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO BOARD_INFO(BI_TITLE,BI_CONTENT,BI_WRITER,BI_CREDAT,BI_CNT)";
		sql += "values('" + bititle + "','" + bicontent + "','" + biwriter + "',NOW(),0)";
		int result = stmt.executeUpdate(sql);
		if (result == 1) {
	%>
	<script>
		alert("정상 등록 되엇습니다");
		location.href = "/web/board/boardlist.jsp";
	</script>
	<%
	}
}
	%>
<form>
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" id="biTitle" name="biTitle"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="biContent" name="biContent"
						style="resize: none" cols="30" rows="15"></textarea></td>
						</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" id="biWriter" name="biWriter"></td>
			</tr>
			<tr>
				<td>
				<th colspan="2"><button>등록</button></th>
			</tr>
		</table>
	</form>

</body>
</html>