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
	Random r = new Random();
	List<Integer> str = new ArrayList<>();
	while (str.size() < 6) {
		int rNum = r.nextInt(100) + 1;
		if (!str.contains(rNum)) {
			str.add(rNum);
		}
	}
	int max = str.get(0);
	int min = str.get(0);
	for (int i = 1; i < str.size(); i++) {
		int num = str.get(i);
		if (max < num) {
			max = num;
		}
		if (min > num) {
			min = num;
		}
	}
	%>
	<table border="1">
		<tr>
			<th clospan="2"><%=str%>
			<th>
		<tr>
			<th>최대값</th>
			<th><%=max%></th>
			<th>최소값</th>
			<th><%=min%></th>
	</table>

</body>
</html>