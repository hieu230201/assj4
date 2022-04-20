package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.SessionAttr;
import dao.UserDao;
import entitys.Users;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final UserDao userDao = new UserDao();
    public AdminController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
			if(u == null || u.getAdmin() == 0) {
				response.sendRedirect("index");
			}else{
				List<Users> list;
				List<Users> users = userDao.findAll();
				int maxPage = (int) Math.ceil(users.size() / (double) 3);
				request.setAttribute("maxPage", Integer.valueOf(maxPage));
				String pageNumber = request.getParameter("page");
				if(pageNumber == null || Integer.valueOf(pageNumber) > maxPage) {
					list = userDao.findAll(0, 3);
					request.setAttribute("currentPage", 1);
				}else {
					list = userDao.findAll(Integer.valueOf(pageNumber), 3);
					request.setAttribute("currentPage", Integer.valueOf(pageNumber));
				}
				request.setAttribute("users", list);
				request.getRequestDispatcher("/views/admin/home.jsp").forward(request, response);
			}
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
