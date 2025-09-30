<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String str = request.getParameter("msg");
	int count = Integer.parseInt(request.getParameter("count"));
%>
</head>
<body>
	<!-- while문으로 str을 count만큼 출력 -->
	<%
		int end = 0;
		while(count > end) {
			// out.print((end+1) + ". " + str + "<br>");
	%>
	<%=(end+1) + ". " + str %><br>
	<%
			end++;
		}
	%>
</body>
</html>