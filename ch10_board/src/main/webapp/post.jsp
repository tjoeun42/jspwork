<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style_normal.css" rel="stylesheet">
<title>글쓰기</title>
</head>
<body>
	<form method="post" action="boardPost">
		<table align="center">
			<tr>
				<th colspan=2 bgcolor="#AFA226"><font color="white">글 쓰 기</font></th>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td width="15%">성명</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" required></td>
			</tr>
			<tr>
				<td colspan="2"><br><hr></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="등록">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="리스트" onClick="location.href='list.jsp'">
				</th>
			</tr>
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
	</form>
</body>
</html>