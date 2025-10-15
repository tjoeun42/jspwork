<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.*" %>
<jsp:useBean id="bDao" class="board.BoardDao" />
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int nowPage = Integer.parseInt(request.getParameter("nowPage"));
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	
	Board board = null;
	Board sessionBoard = (Board)session.getAttribute("bean");
	
	if(sessionBoard == null || sessionBoard.getNum() != num) {
		bDao.upCount(num);
		board = bDao.getBoard(num);
		session.setAttribute("bean", board);
	} else {
		board = sessionBoard;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table{width:550px; margin-top: 50px;}
	th, td {height:30px;}
	a {text-decoration:none; color:black; cursor:pointer;}
</style>
<title>상세보기</title>
</head>
<body>
	<table align="center" class="read-table">
		<tr>
			<th colspan=4 bgcolor="#8041D9"><font color="white">글 읽 기</font></th>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" width="15%">이름</td>
			<td align="center" bgcolor="#E8D9FF" width="35%"><%=board.getName() %></td>
			<td align="center" bgcolor="#D1B2FF" width="15%">등록날짜</td>
			<td align="center" bgcolor="#E8D9FF" width="35%"><%=board.getRegdate().substring(0,10) %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" width="15%">제목</td>
			<td colspan="3" bgcolor="#E8D9FF"><%=board.getSubject() %></td>
		</tr>
		<tr>
			<td colspan="4"><br>본문내용 :<br><%=board.getContent() %><br><br><br></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><%=board.getIp() %>로 부터 글을 남기셨습니다 / 조회수 : <%=board.getCount() %> </td>
		</tr>
		<tr>
			<td colspan="4" align="center"><hr/>
				[ <a href="">리스트</a> | 
				<a href=""> 수 정</a> | 
				<a href="">답 변</a> | 
				<a href=""> 삭 제</a> ]
			</td>
		</tr>
	</table>
</body>
</html>