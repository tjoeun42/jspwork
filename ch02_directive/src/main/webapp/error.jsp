<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Error Page</h1>
	<p>0으로 나눌 수 없습니다</p>
	예외타입 : <%=exception.getClass().getName() %><p/>
	예외메시지 : <%=exception.getMessage() %>
</body>
</html>