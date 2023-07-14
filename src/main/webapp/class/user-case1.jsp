<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	<%
	String uinickname= request.getParameter("uinickname");
	if (uinickname != null && !uinickname.isEmpty()) {
		String uiemail = request.getParameter("uiemail");
		String uiphonenumber = request.getParameter("uiphonenumber");

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO USER_INFO(UI_ID,UI_PWD,UI_NAME)";
		sql += "values('" + uinickname + "','" + uiemail + "','" + uiphonenumber + "')";
		int result = stmt.executeUpdate(sql);
		if (result == 1) {
	%>
	<script>
		alert("정상 등록 되엇습니다");
		location.href = "/web/user/user-case.jsp";
	</script>
	<%
	}
	}
	%>
	<form>
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" id="uinickname" name="uinickname"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><textarea type="text" id="uiemail" name="uiemail"
						style="resize: none" cols="30" rows="15"></textarea></td>
						</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="uiphonenumber" name="uiphonenumber"></td>
			</tr>
			<tr>
				<td>
				<th colspan="2"><button>등록</button></th>
			</tr>
		</table>
	</form>

</body>
</html>