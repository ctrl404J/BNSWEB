package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.NewsVo;

@WebServlet("/AdminUpdateDelete")
public class AdminUpdateDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		if (request.getParameter("delete") != null) {
			int id = Integer.parseInt(request.getParameter("postId"));
			AdminDao dao = new AdminDao();
			try {
				dao.adminDeleteAction(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String path = "WEB-INF/adminPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);

		}

		if (request.getParameter("update") != null) {
			int id = Integer.parseInt(request.getParameter("postId"));
			AdminDao dao = new AdminDao();
			NewsVo news = new NewsVo();
			news = dao.getNews(id);
			System.out.println(news.getId());

			request.setAttribute("news", news);
			String path = "WEB-INF/updateForm.jsp";
			request.getRequestDispatcher(path).forward(request, response);

		} else if (request.getParameter("updateAction") != null) {
			int id = Integer.parseInt(request.getParameter("postId"));
			String title = request.getParameter("title");
			String detail = request.getParameter("detail");

			AdminDao dao = new AdminDao();
			boolean result = false;
			try {
				result = dao.adminUpdateAction(title, detail, id);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			PrintWriter writer = response.getWriter();
			String url = "/bns";
			if (!result) {
				writer.println("<script>alert('修正成功。'); location.href='" + url + "';</script>");
				writer.close();
			} else if (result) {
				writer.println("<script>alert('修正失敗。'); location.href='" + url + "';</script>");
				writer.close();
			}
		}

	}

}
