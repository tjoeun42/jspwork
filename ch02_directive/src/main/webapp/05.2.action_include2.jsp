<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>Action Inculde Tag Ex2</h1>
	<jsp:include page="05.3.action_include2.jsp">
		<jsp:param value="naver" name="siteName"/>
		<jsp:param value="031-123-3456" name="siteTel"/>
	</jsp:include>
	Action Inculde의 첫번째 페이지<p/>
	<%=siteName %><p/>
	<%=siteTel %><p/>
</body>
</html>