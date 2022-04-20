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


@WebServlet("/admin/video")
public class VideoAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private VideoDao videoService = new VideoDao();
   
    public VideoAdminController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		request.setAttribute("user", user);
		if(user != null && user.getAdmin() == 1) {
			String action = request.getParameter("action");
			if(action.equals("view")) {
				doGetOverView(request, response);
			}else if(action.equals("delete")) {
				doGetDelete(request,response);
			}else if (action.equals("add")) {
				request.setAttribute("isEdit", true);
				doGetAdd(request,response);
			}else {
				request.setAttribute("isEdit", false);
				doGetEdit(request,response);
			}
			
			
			
			
		}else {
			response.sendRedirect("index");
		}
	}
	
	private void doGetOverView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Videos> videos = videoService.findAll();
		request.setAttribute("videos", videos);
		request.getRequestDispatcher("/views/admin/viewVideo.jsp").forward(request, response);
	}
	
	private void doGetDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String href = request.getParameter("href");
		Videos v = videoService.findOne(href);
		v.setActive((byte) 0);
		Videos videoDeleted = videoService.updateVideo(v);
		if(videoDeleted != null) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
		
	}
	
	
	private void doGetAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/admin/videoEdit.jsp").forward(request, response);

	}
	
	private void doGetEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String href = request.getParameter("href");
		Videos video = videoService.findOne(href);
		request.setAttribute("video", video);
		request.getRequestDispatcher("/views/admin/videoEdit.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		request.setAttribute("user", user);
		if(user != null && user.getAdmin() == 1) {
			String action = request.getParameter("action");
			if(action.equals("add")) {
				doPostAdd(request,response);
			}else if(action.equals("edit")) {
				doPostEdit(request,response);
			}
			
			
			
		}else {
			response.sendRedirect("HomeController");
		}
	}
	
	private void doPostAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 
		response.setContentType("application/json");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String href = request.getParameter("newHref");
		String poster = request.getParameter("poster");
		Videos video = new Videos();
		video.setDescription(description);	
		video.setTitle(title);
		video.setPoster(poster);
		video.setActive((byte) 1);
		video.setViews(0);
		video.setHref(href);
		Videos videoReturn = videoService.createVideo(video);
		if(videoReturn != null) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
	}
	
	private void doPostEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 
		response.setContentType("application/json");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String href = request.getParameter("newHref");
		String poster = request.getParameter("poster");
		String hrefOrigin = request.getParameter("hrefOrigin");
		Videos video = videoService.findOne(hrefOrigin);
		video.setDescription(description);
		video.setHref(href);
		video.setTitle(title);
		video.setPoster(poster);
		Videos videoReturn = videoService.updateVideo(video);
		if(videoReturn != null) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
	}

}
