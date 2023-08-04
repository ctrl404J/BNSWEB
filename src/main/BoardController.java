package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		String start = request.getParameter("startNum");

		int startNum = 0;
		if (start != null) {
			startNum = Integer.parseInt(start);
		}

		HomeDao hd = new HomeDao();
		List<NewsVo> newsList = new ArrayList<NewsVo>();
		try {
			newsList = hd.getNews(startNum);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		JSONObject jsObj = new JSONObject();
		JSONArray jsArr = new JSONArray();

		for (int i = 0; i < newsList.size(); i++) {
			JSONObject obj = new JSONObject();
			obj.put("title", newsList.get(i).getTitle());
			obj.put("detail", newsList.get(i).getDetail());
			obj.put("date", newsList.get(i).getDate());
			obj.put("totalCount", newsList.get(i).getTotalCount());
			jsArr.add(obj);
		}

		jsObj.put("newsList", jsArr);
		String json = jsObj.toJSONString();
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();

	}

}
