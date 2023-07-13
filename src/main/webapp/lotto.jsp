<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
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
	List<Integer>lotto=new ArrayList<>();
	Random r =new Random();
	for(int i=0; i<6; i++){
		int rNum=r.nextInt(6)+1;
		if(lotto.indexOf(rNum)==-1){
		}else{
			i--;
		
out.print("<table border=\"1"\">""
out.print("<tr>");
		

	for(int  i=0; i<lotto.size(); i++){
		out.print(""<tr>");
		


			


		%>		
		
		</table>
</body>
</html>