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
		String name = "한철민";
		int num = 4;
		boolean bool = true;
		double douNum = 3.14;
		int age;  // 지역변수는 반드시 초기화 후 사용
		String str;
	%>
	나의 이름은 <%=name %>입니다.<br>
	<%= num%>학년 입니다<br>
	재학중 입니까? <%=bool %><br>
	원주율은 <%=douNum %>입니다<br><br>
	
	<%-- 지역변수는 반드시 초기화 후 사용
		<%=age %><br>
		<%=str %><br> 
	--%>
	<%=application.getRealPath("/") %>
</body>
</html>