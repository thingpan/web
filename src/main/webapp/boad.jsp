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
<%
String bititle =request.getParameter("bititle");
if(bititle!=null && bititle.length()!=0){
String bicontent=request.getParameter("bicontent");
String biwriter=request.getParameter("biwriter");
out.println("bititle :"+bititle );
out.println("bicontent :"+bicontent);
out.println("biwriter :"+biwriter);
 Connection con =DBCon.getCon();
	Statement stmt =con.createStatement();
	String sql="INSERT INTO BOARD_INFO(BI_TITLE,BI_CONTENT,BI_WRITER,BI_CREDAT,BI_CNT)";
	sql+="values('"+bititle+"','"+bicontent+"','"+biwriter+"')";
	int result =stmt.executeUpdate(sql);
	if(result==1){
%>	
<script>		
		alert("<%=biwriter%>님 게시물을 성공적으로 올렸습니다");
		location.href="/web/board.jsp";

</script>

		<%
	}
}
%>
<form>

<label for="bititle">게시물</label>
<input type="text" id="bititle" name="bititle"><br>
<label for="bicontent">내용</label>
<input type="password" id="bicontent" name="bicontent"><br> 
<label for="biwriter">글쓴이</label>
<input type="text" id="biwriter" name="biwriter"><br> 

<button type="summit">올리기<button>

</body>
</html>