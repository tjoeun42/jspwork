<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, vote.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	
	VoteList vlist = vDao.getVote(num);
	ArrayList<String> vitem = vDao.getItem(num);
	
	String question = vlist.getQuestion();
	int type = vlist.getType();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style>
	* {margin: 0 auto;}
	.voteForm {width:400px;}
	h2, h5, th, .cen {text-align:center; }
	a {text-decoration:none; color:black; cursor:pointer;}
	.pt5 {padding-top:5px;}
</style>
</head>
<body>
	<div class="voteForm">
		<form action="voteFormProc.jsp">
			<table class="table">
				<tr>
					<td>Q : <%=question %></td>
				</tr>
				<tr>
					<td style="padding-left:30px;">
					<%
					for(int i=0; i<vitem.size(); i++) {
						String item = vitem.get(i);
						if(type==1) {
							out.print("<input type='checkbox' name='itemnum' value='" + i + "'>" + item);
						} else {
							out.print("<input type='radio' name='itemnum' value='" + i + "'>" + item);
						}
						out.print("<br>");
					}
					%>
					</td>
				</tr>
				<tr>
					<td class="cen">
						<input type="submit" value="투표">&emsp;&emsp;
						<input type="button" value="결과">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
