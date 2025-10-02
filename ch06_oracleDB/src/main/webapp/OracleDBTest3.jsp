<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JDBC를 이용한 ORACLE연동</h1>
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:free","tjoeun","1234");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from department");
%>
	<table border="1">
		<tr>
			<th>DEPT_ID</th>
			<th>DEPT_TITLE</th>
			<th>LOCATION_ID</th>
		</tr>
	<%
		while(rs.next()) {
			String id = rs.getString(1);
			String title = rs.getString(2);
			String location = rs.getString(3);
	%>
		<tr>
			<td><%=id %></td>
			<td><%=title %></td>
			<td><%=location %></td>
		</tr>
	<%		
		}
	%>
	</table>
<%		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
</body>
</html>