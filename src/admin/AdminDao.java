package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import main.DBConn;
import main.NewsVo;

public class AdminDao {

	private Connection conn;
	private Statement st;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Boolean adminLogin(String pw) {
		boolean certification = false;
		String sql = "SELECT LOGIN_PWD FROM BNS_LOGIN WHERE LOGIN_PWD=?;";

		if ((pw == null) || pw.equals("")) {
			return certification;
		}

		try {
			conn = DBConn.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			rs = pstmt.executeQuery();
			String mypw = null;

			while (rs.next()) {
				mypw = rs.getString("LOGIN_PWD");
			}
			if (mypw.equals(pw)) {
				certification = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return certification;
	}

	public List<NewsVo> getAdminPageList() throws SQLException {

		String sql = "SELECT * FROM BNS_NEWS ORDER BY ID DESC;";
		conn = DBConn.getInstance().getConnection();
		st = conn.createStatement();
		rs = st.executeQuery(sql);
		List<NewsVo> newsList = new ArrayList<NewsVo>();
		while (rs.next()) {
			int id = rs.getInt("ID");
			String title = rs.getString("TITLE");
			String detail = rs.getString("DETAIL");
			String date = rs.getString("DATE");
			int totalCount = rs.getInt("TOTALCOUNT");

			NewsVo news = new NewsVo(id, title, detail, date, totalCount);
			newsList.add(news);
		}
		rs.close();
		st.close();
		conn.close();

		return newsList;
	}

	public int adminWriteAction(String title, String detail) throws SQLException {
		String sql = "INSERT INTO BNS_NEWS(TITLE, DETAIL, DATE) VALUES(?, ?, CURRENT_DATE);";
		int writeResult = 0;
		try {
			conn = DBConn.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, detail);
			writeResult = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		pstmt.close();
		conn.close();

		if (writeResult == 0) {
			return 1;
		} else {
			return 2;
		}

	}

	public boolean adminUpdateAction(String title, String detail, int id) throws SQLException {

		String sql = "UPDATE BNS_NEWS SET TITLE = ?, DETAIL = ? "
				+ "WHERE ID = ?;";
		Boolean result = true;
		try {
			conn = DBConn.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, detail);
			pstmt.setInt(3, id);
			result = pstmt.execute();
			System.out.println("dao update result:" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

		if (!result) {
			return false;
		} else {
			return true;
		}

	}

	public void adminDeleteAction(int id) throws SQLException {

		String sql = "DELETE FROM BNS_NEWS WHERE ID = ?;";
		try {
			conn = DBConn.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

	}

	public NewsVo getNews(int id) {

		String sql = "SELECT * FROM BNS_NEWS where id = ?;";
		NewsVo news = new NewsVo();
		try {
			conn = DBConn.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String detail = rs.getString("DETAIL");
				String date = rs.getString("DATE");
				news.setId(id);
				news.setTitle(title);
				news.setDetail(detail);
				news.setDate(date);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return news;
	}

}
