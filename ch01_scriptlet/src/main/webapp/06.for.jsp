<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
		int sum=0;
		for(int i=1; i<=10; i++) {
			sum += i;
			if(i==10)
				out.print(i + "=");
			else
				out.print(i + "+");
		}
		out.print(sum);
	%> --%>
	
	<%
		int sum=0;
		for(int i=1; i<=10; i++) {
			sum += i;
			if(i==10) {
	%>
		<%=i + "=" %>
	<%				
			} else {
	%>
		<%=i + "+" %>		
	<%
			}
		}
	%>
	<%=sum %><br>
	
<%
	int[] intArr = new int[10];
	for(int i=0; i<intArr.length; i++) {
		intArr[i] = i+1;
%>
	<%=intArr[i] + " " %>
<%
	}
%>
	
</body>
</html>





