<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/common.jsp"%>
<%
String biNum =request.getParameter("biNum");
Connection con =DBCon.getCon();
String sql="DELETE FROM BOARD_INFO WHERE BI_NUM=?";
PreparedStatement pstmt =con.prepareStatement(sql);
pstmt.setString(1,biNum);

int result=pstmt.executeUpdate();
if(result!=1){
	

%>
   <script>
    alert("이미 삭제된 게시물 입니다");
    location.href="<%=root%>/board/boardlist.jsp";
   </script>
   <%
   
   return;
}
   %>
  <script>
    alert(" 정상적으로 삭제 되었습니다");
    location.href="<%=root%>/board/boardlist.jsp";
   </script>
<%=biNum%>