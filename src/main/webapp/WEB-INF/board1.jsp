<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>회원가입 페이지</h3>
<%
String uiId=request.getParameter("uiId");
if(uiId!=null && uiId.length()!=0){ 
String uiPwd=request.getParameter("uiPwd");

String uiName=request.getParameter("uiName");
out.println("uiId :"+uiId);
out.println("uiPwd :"+uiPwd);
out.println("uiName :"+uiName);
Connection con=DBCon.getCon();
	Statement stmt =con.createStatement();
	String sql="INSERT INTO BOARD_INFO(BI_TITLE,BI_CONTENT,BIWRITER))";
	sql+="values('"+uiId+"','"+uiPwd+"','"+uiName+"')";
	int result =stmt.executeUpdate(sql);
	if(result==1){
%>	
<script>		
		alert("<%=uiName%>님 게시물을 성공적으로 올렸습니다.");
		location.href="/web/login.jsp";

</script>

		<%
	}
}
%>
<form>

<label for="uiId">제목 </label>
<input type="text" id="uiId" name="uiId"><br>
<label for="uiPwd">내용</label>
<input type="password" id="uiPwd" name="uiPwd"><br> 
<label for="uiName">글쓴이</label>
<input type="text" id="uiName" name="uiName"><br> 

<button type="summit">등록<button>
</form>
</body>
</html>