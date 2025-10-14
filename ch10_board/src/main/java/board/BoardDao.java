package board;

import java.sql.*;
import java.util.ArrayList;

public class BoardDao {
	private DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	// 게시판 목록 가져오기
	public ArrayList<Board> getBoardList() {
		ArrayList<Board> alist = new ArrayList<>();	
		try {
			con = pool.getConnection();
			sql = "select * from board order by num desc";
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				Board bean = new Board();
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSubject(rs.getString("subject"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setCount(rs.getInt("count"));
				alist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
	
	// 
	public ArrayList<Board> getList2() {
		ArrayList<Board> alist = new ArrayList<>();	
		try {
			con = pool.getConnection();
			sql = "";
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
}
