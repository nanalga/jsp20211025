<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 좋아하는 과일 선택</p>
<!-- form>(input:c)*5+br+input:s -->
<form action="">
	<input type="checkbox" name="param1" value="apple" id=""> 사과
	<input type="checkbox" name="param1" value="berry" id=""> 딸기
	<input type="checkbox" name="param1" value="mellon" id=""> 멜론
	<input type="checkbox" name="param1" value="watermellon" id=""> 수박
	<input type="checkbox" name="param1" value="whitewater" id=""> 참외
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<%
String[] params = request.getParameterValues("param1");
%>

<ul>
<%
if(params != null){
	for(String item : params){
		out.print("<li>");
		out.print(item);
		out.print("</li>");
	}	
}

%>
</ul>

</body>
</html>