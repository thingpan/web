<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>

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
int nums =new int [10]{10,5,21};
for(int i=0; i<nums.length; i++){
	for(int j=j+1; j<nums.length; j++){
		if(nums[i]>nums[j]){
			int tmo=nums[i];
			nums[i]=nums[j];
			nums[j]=tmp;
		}
	}
List<Integer>numList =new ArrayList<>();
numList.add(10);
numList.add(5);
numList.add(21);


//for(int i=0; i<numList.size(); i++){
//for(int j=i+1; j<numList.size(); j++){
//	 if (numList.get(i)>numList.get(j)){
		// int tmp=numList.get(i);
		// numList.set(i,numList.get(j));
		// numList.set(j,tmp);
	// }
	// }
//}
List<Map<String,Integer>>mapList =new ArrayList<>();
Map<String,Integer> map =new HashMap<>();
map.put("age",10);
mapList.add(map);
map=new HashMap<>();
map.put("age",5);
mapList.add(map);
map=new HashMap<>();
map.put("age",21);
mapList.add(map);
for(int k=0; k<mapList.size(); k++){
	for(int p=k+1; p<mapList.size(); p++){
		if(mapList.get(i).get("age") >mapList.get(j).get("age")){
			Map<String,Integer> tmpMap =mapList.get(i);
			mapList.set(i, mapList.get(j));
			mapList.get(j,tmpMap);
		}
		}
	}
}



%>

	<table border="1">
		<% 
for(int i=0; i<numList.size(); i++){
%>
		<tr>
			<td><%=i%></td>
		</tr>
		<%=numList.get(i)%>
		<%
}
%>
	
</body>
</html>