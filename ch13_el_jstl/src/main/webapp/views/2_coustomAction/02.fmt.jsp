<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. formatNumber</h3>
	<p>
	숫자 데이터의 포맷(형식) 지정<br>
	- 표현하고자 하는 숫자데이터의 형식을 통화기호, %등 원하는 쓰임에 맞게 형식을 지정하는 태그<br><br>
	(fmt:formatNumber value="출력할 값" [groupingUsed="true|false" type="percent|currency" cirrencySymbol="통화기호문자"]<br>
	 => groupingUsed : 세자리마다 구분자(,) 표시여부 (기본값 true = 세자리마다 구분자 표시)<br>
	 => type : percent = %로 출력<br>
 &emsp; &emsp; &emsp; &ensp;currency = 현재 local지역의 화폐 표시 여부<br>
	 => currencySymbol = 화폐단위를 넣어 줄 때		   	
	</p>
	
	<c:set var="num1" value="123456789" />
	<c:set var="num2" value="0.75" />
	<c:set var="num3" value="50000" />
	
	그냥 출력 : ${num1}<br>
	세자리마다 구분하여 출력 : <fmt:formatNumber value="${num1}" /><br>
	숫자 그대로 출력 : <fmt:formatNumber value="${num1}" groupingUsed="false"/><br><br>
	
	percent : <fmt:formatNumber value="${num2}" type="percent" /><br>
	currency : <fmt:formatNumber value="${num3}" type="currency" groupingUsed="false" /><br>
	currencySymbol $ : <fmt:formatNumber value="${num3}" type="currency" currencySymbol="$" /><br>
	currencySymbol ￥ : <fmt:formatNumber value="${num3}" type="currency" currencySymbol="￥" />
</body>
</html>









