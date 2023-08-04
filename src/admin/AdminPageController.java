package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bns")
public class AdminPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "WEB-INF/bns.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		String pw = request.getParameter("pw");
		AdminDao ad = new AdminDao();
		Boolean result = ad.adminLogin(pw);
		if (result) {
			String path = "WEB-INF/adminPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		} else {
			String path = "/";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

}
