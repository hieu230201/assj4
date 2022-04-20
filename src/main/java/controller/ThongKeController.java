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
import dao.FavoriteDao;
import dao.ShareDao;
import dao.VideoDao;

import entitys.Users;

import entitys.Videos;

/**
 * Servlet implementation class ThongKeController
 */
@WebServlet({"/admin/statistic"})
public class ThongKeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static FavoriteDao daoFavorite = new FavoriteDao();
    private static VideoDao daoVideo = new VideoDao();
    private static ShareDao daoShare = new ShareDao();
    public ThongKeController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		request.setAttribute("user", user);
		if(user != null && user.getAdmin() == 1) {
			String action = request.getParameter("action");
			if(action.equals("countLike")) {
				doGetCountLike(request, response);
			}else if(action.equals("userLike")) {
				doGetUserLike(request,response);
			}else if (action.equals("userShare")) {
				
				doGetShare(request,response);
			}
			
			
			
		}else {
			response.sendRedirect("");
		}
	}
	
	private void doGetCountLike(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<Object[]> list = daoFavorite.countLike();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/views/admin/countLike.jsp").forward(request, response);
	}
	
	private void doGetUserLike(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Videos v = daoVideo.findByID(id);
		request.setAttribute("vid", v);
		List<Videos> videos = daoVideo.findAll();
		List<Object[]> list = daoFavorite.countUserLike(Integer.valueOf(id));
		request.setAttribute("video", videos);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/views/admin/userLike.jsp").forward(request, response);
	}
	
	private void doGetShare(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Videos v = daoVideo.findByID(id);
		request.setAttribute("vid", v);
		List<Videos> videos = daoVideo.findAll();
		List<Object[]> list = daoShare.countUserLike(Integer.valueOf(id));
		request.setAttribute("video", videos);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/views/admin/userShare.jsp").forward(request, response);
	}

	
	
	


}
