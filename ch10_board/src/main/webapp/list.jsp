<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, board.*" %>
<jsp:useBean id="bDao" class="board.BoardDao" />
<%
	ArrayList<Board> alist = bDao.getBoardList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">
<title>게시판</title>
</head>
<body>
	<div class="list">
		<h2 class="m30">JSPBoard</h2>
		<table class="table m30">
			<tr>
				<td colspan=5 class="right-align">Total : </td>
			</tr>
			<tr>
				<th width="12%">번호</th>
				<th width="36%">제목</th>
				<th width="15%">이름</th>
				<th width="25%">날짜</th>
				<th width="12%">조회수</th>
			</tr>
			<%
			for(int i=0; i<alist.size(); i++) {
				Board board = alist.get(i);
			%>
				<tr>
					<td class="cen"><%=alist.size()-i %></td>
					<td><%=board.getSubject() %></td>
					<td class="cen"><%=board.getName() %></td>
					<td class="cen"><%=board.getRegdate().substring(0,10) %></td>
					<td class="cen"><%=board.getCount() %></td>
				</tr>
			<%} // for end%>
			<tr>
				<td colspan=5><br/><br/></td>
			</tr>
			<tr>
				<td colspan=3 class="cen">[1]</td>
				<td colspan=2 class="right-align">
					<a href = "">[글쓰기]</a>&emsp;
					<a href = "">[처음으로]</a>&emsp;
				</td>
			</tr>
			
		</table>
	</div>
</body>
</html>