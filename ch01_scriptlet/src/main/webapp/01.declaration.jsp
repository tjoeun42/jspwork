<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석입니다 -->
	학원 이름은 <%=name %><br>
	강의실은 <%=num %>층 입니다.<br><br>
	<%! 
		// 프로그래밍 주석과 동일한 주석
		/*
			여러줄 주석
		*/
		String name = "더조은";
		int num = 8;
	%>
	
	<%
		String name2 = team + " 강좌";
	%>
	<%= name2 %>
	
	<%!
		String team = "java 풀스택";
	%>
	<%-- 
		jsp 주석
		html과 jsp가 섞여 있을 때
	--%>
</body>
</html>