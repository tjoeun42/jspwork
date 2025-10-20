package ajaxReply;

import java.sql.*;


public class ReplyDao {
	private DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	/*
	public void aaa() {
		try {
			con = pool.getConnection();
			sql = "";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, );
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
	}
	*/
}
