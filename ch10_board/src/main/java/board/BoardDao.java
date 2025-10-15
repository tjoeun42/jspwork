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
	public ArrayList<Board> getBoardList(String keyField, String keyWord) {
		ArrayList<Board> alist = new ArrayList<>();	
		try {
			con = pool.getConnection();
			if(keyWord.equals("") || keyWord==null) {
				sql = "select * from board order by num desc";	
			} else {
				sql = "select * from board where " + keyField + " like '%" + keyWord + "%' order by num desc";
			}
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
	
	// 조회수 증가
	public void upCount(int num) {
		try {
			con = pool.getConnection();
			sql = "update board set count = count+1 where num=" + num;
			con.createStatement().executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
	}
	
	// num에 해당하는 게시물 얻어오기
	public Board getBoard(int num) {
		Board bean = new Board();
		try {
			con = pool.getConnection();
			sql = "select * from board where num="+num;
			rs = con.createStatement().executeQuery(sql);
			if(rs.next()) {
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSubject(rs.getString("subject"));
				bean.setContent(rs.getString("content"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setPass(rs.getString("pass"));
				bean.setIp(rs.getString("ip"));
				bean.setCount(rs.getInt("count"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return bean;
	}
	
	// 게시물 수정
	public void updateBoard(Board bean) {
		try {
			con = pool.getConnection();
			sql = "update board set name=?, subject=?, content=? where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getSubject());
			pstmt.setString(3, bean.getContent());
			pstmt.setInt(4, bean.getNum());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
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
