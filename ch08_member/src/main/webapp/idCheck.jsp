<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mDao" class="member.MemberDao" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheck</title>
</head>
<body>
<%
	String id = request.getParameter("id");

	if(mDao.checkId(id)) {
		out.print(id + "는 이미 존재하는 ID입니다<p/>");
	} else {
		out.print(id + "는 사용가능합니다<p/>");
	}
%>
	<a href="" onclick="self.close()">닫기</a>
</body>
</html>