package board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board/boardReply")
public class BoardReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Board board = new Board();
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setRef(Integer.parseInt(request.getParameter("ref")));
		board.setPos(Integer.parseInt(request.getParameter("pos")));
		board.setDepth(Integer.parseInt(request.getParameter("depth")));
		board.setPass(request.getParameter("pass"));
		board.setIp(request.getParameter("ip"));
		
		BoardDao vDao = new BoardDao();
		vDao.replyUpPos(board.getRef(), board.getPos());
		vDao.replyBoard(board);
		
		response.sendRedirect("list.jsp?nowPage=" + request.getParameter("nowPage"));
	}
}
