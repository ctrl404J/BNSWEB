package main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HomeDao {
	private Connection conn;
	private Statement st;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public List<NewsVo> getNews(int startIndex) throws SQLException {

		String sql = "SELECT *, (SELECT COUNT(*) FROM BNS_NEWS) AS totalCount "
				+ "             FROM (SELECT * FROM BNS_NEWS ORDER BY ID DESC OFFSET ? ROWS FETCH NEXT 7 ROWS ONLY)"
				+ "             AS subquery ORDER BY ID DESC;";
		try {

			conn = DBConn.getInstance().getConnection();
			st = conn.createStatement();
			pstmt = conn.prepareStatement(sql); //추가
			pstmt.setInt(1, startIndex);
			rs = pstmt.executeQuery(); //추가

		} catch (SQLException e) {
			e.printStackTrace();
		}

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

}
