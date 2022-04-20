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
import dao.VideoDao;
import entitys.Users;
import entitys.Videos;


@WebServlet({"/index", "/favorites", "/history", "/results"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final VideoDao dao = new VideoDao();
    
    public HomeController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String path = request.getServletPath();
		if(path.equals("/index")) {
			List<Videos> videos = dao.findAll();
			Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
			if(u != null) {
				request.setAttribute("admin", u.getAdmin());
			}
			request.setAttribute("videos", videos);
			request.getRequestDispatcher("/views/user/index.jsp").forward(request, response);
		}else if (path.equals("/favorites")) {
			Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
			List<Videos> videos = dao.findFavorites(u.getId());
			request.setAttribute("admin", u.getAdmin());
			request.setAttribute("videos", videos);
			request.getRequestDispatcher("/views/user/favorties.jsp").forward(request, response);
		}else if (path.equals("/history")){
			Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
			List<Videos> videos = dao.findHistory(u.getId());
			request.setAttribute("admin", u.getAdmin());
			request.setAttribute("videos", videos);
			request.getRequestDispatcher("/views/user/history.jsp").forward(request, response);
		}else {
			String title = request.getParameter("search");
			List<Videos> videos = dao.findAll(title);
			Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
			if(u != null) {
				request.setAttribute("admin", u.getAdmin());
			}
			request.setAttribute("videos", videos);
			request.getRequestDispatcher("/views/user/index.jsp").forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
