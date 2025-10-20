<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 댓글 달기</title>
<style>
	body {text-align:center;}
	img {width: 600px;}
	table {border:2px solid; width: 600px; border-collapse:collapse;}
	th, td {border:1px solid;}
</style>
</head>
<body>
	<img src="../resources/img/board.jpg">
	<table align="center" id="reply">
		<thead>
			<tr>
				<th>댓글 작성</th>
				<td>
					<textarea rows="3" cols="50" id="replyContent"></textarea>
				</td>
				<td>
					<input type="button" id="replyBtn" value="댓글등록">
				</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>