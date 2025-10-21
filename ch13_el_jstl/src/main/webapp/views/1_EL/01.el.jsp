<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.study.dto.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. 기존 방식대로 스크립트릿과 표현식을 이용하여 각 scope에 담겨있는 값 출력하기</h3>
<%-- 
	<%
		String classRoom = (String)request.getAttribute("classRoom");
		Person student = (Person)request.getAttribute("student");
	%>
	<p>
		강의장 정보 : <%=classRoom %> <br>
		수강생 정보
		<ul>
			<li>이름 : <%=student.getName() %></li>
			<li>나이 : <%=student.getAge() %></li>
			<li>성별 : <%=student.getGender() %></li>
		</ul>
	</p>
--%>	
	<h3>2. EL을 이용하여 보다 쉽게 해당 scope에 저장된 값 출력하기</h3>
	<p>
		EL을 이용하여 getXxx를 통해 값을 빼올 필요 없이 EL구문내에 키값만 제시하면 바로 접근 가능<br>
		기본적으로 EL은 JSP내장객체를 구분하지 않고 자동으로 모든 내장객체에 키값을 검색하여 존재하면 값을 가져옴
	</p>
	
	<p>
		강의장 정보 : ${ classRoom } <br>
		수강생 정보
		<ul>
			<li>이름 : ${ student.name }</li>
			<li>나이 : ${ student.age }</li>
			<li>성별 : ${ student.gender }</li>
		</ul>
	</p>
</body>
</html>







