<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, board.*" %>
<jsp:useBean id="bDao" class="board.BoardDao" />
<%
	String keyField= "", keyWord = "";
	if(request.getParameter("keyWord") != null) {
		keyField = request.getParameter("keyField");
		keyWord = request.getParameter("keyWord");	
	}
	ArrayList<Board> alist = bDao.getBoardList(keyField, keyWord);
	
	int nowPage = 1;
	
	if(request.getParameter("reload") != null) {
		if(request.getParameter("reload").equals("true")) {
			keyField = "";
			keyWord = "";
		}
	}
%>
<script type="text/javascript">
	function list() {
		document.listFrm.submit();
	}
	function read(num) {
		document.readFrm.num.value = num;
		// document.readFrm.action = "read.jsp";
		document.readFrm.submit();
	}
</script>

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
					<td><a href="javascript:read('<%=board.getNum() %>')"><%=board.getSubject() %></a></td>
					<td class="cen"><%=board.getName() %></td>
					<td class="cen"><%=board.getRegdate().substring(0,10) %></td>
					<td class="cen"><%=board.getCount() %></td>
				</tr>
			<%} // for end%>
			<tr>
				<td colspan=5><br><br></td>
			</tr>
			<tr>
				<td colspan=3 class="cen">[1]</td>
				<td colspan=2 class="right-align">
					<a href = "post.jsp">[글쓰기]</a>&emsp;
					<a href = "javascript:list();">[처음으로]</a>&emsp;
				</td>
			</tr>
		</table>
		<form action="list.jsp" name="searchFrm">
			<select name="keyField">
				<option value = "name">이름</option>
				<option value = "subject">제목</option>
				<option value = "content">내용</option>
			</select>
			<input name="keyWord" required>
			<input type="submit" value="찾기">
		</form>
		
		<!-- 처음으로 누르면 화면 reload -->
		<form name="listFrm">
			<input type="hidden" name="reload" value="true">
			<input type="hidden" name="nowPage" value = "1">
		</form>
		
		<!-- 제목을 누르면 상세보기 페이지로 가기 -->
		<form name="readFrm" action="read.jsp">
			<input type="hidden" name="num">
			<input type="hidden" name="nowPage" value="<%=nowPage %>">
			<input type="hidden" name="keyField" value="<%=keyField %>">
			<input type="hidden" name="keyWord" value="<%=keyWord %>">
		</form>
	</div>
</body>
</html>
