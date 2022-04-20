package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.SessionAttr;
import dao.CommentDao;
import dao.FavoriteDao;
import dao.ShareDao;
import dao.VideoDao;

import entitys.*;

import io.github.cdimascio.dotenv.Dotenv;

@WebServlet("/video")
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final VideoDao dao = new VideoDao();
	private static final FavoriteDao FAVORITE_DAO = new FavoriteDao();
	private static final ShareDao sharedao = new ShareDao();
	private static final CommentDao commentDao = new CommentDao();
    public VideoController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		String href = request.getParameter("id");
		List<Videos> videos = dao.findAll();
		request.setAttribute("videos", videos);
		if(action.equals("watch")) {
			doGetWatch(session,href, request, response);
		}else if(action.equals("liked")) {
			doGetLike(session, href,request, response);
		}else if(action.equals("comment")){
			doGetComment(session, href,request, response);
		}
		
	}

	private void doGetComment(HttpSession session, String href,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("applocation/json");
		Users  currenUsers = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		String videoId = request.getParameter("id");
		String cmt = request.getParameter("cmt");
		Comments comments = new Comments();
		comments.setVideo_id(Integer.parseInt(videoId));
		comments.setUser_id(currenUsers.getId());
		comments.setBinhluan(cmt);
		comments.setDateComment(new Timestamp(System.currentTimeMillis()));

		commentDao.createCMT(comments);
		if(comments != null){
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
	}
	
	private void doGetLike(HttpSession session, String href,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("applocation/json");
		Users  currenUsers = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		boolean check = FAVORITE_DAO.updateLikeOrUnlike(currenUsers, href);

		if(check) {
			response.setStatus(204); 
		}else {
			response.setStatus(400);
		}
	
	}
	

	private void doGetWatch(HttpSession session,String href ,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Videos video = dao.findOne(href);
		List<Object[]> commentsList = commentDao.findAll(video.getId());
		List<Object[]> commentsListSort = commentDao.findAllSortData(video.getId());
		Users  currenUsers = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		Favorites f = null;
		if(currenUsers != null) {
			 f = FAVORITE_DAO.findOne(currenUsers.getEmail(), href);
		}
		if(video != null) {
			if(f == null) {
				f = FAVORITE_DAO.create(currenUsers, video);
			}
			int newView = video.getViews() + 1;
			video.setViews(newView);
			dao.updateVideo(video);
			request.setAttribute("sort", commentsListSort);
			request.setAttribute("obj", commentsList);
			request.setAttribute("likeVideo", f.getLikeDate());
			request.setAttribute("count", commentsList.size());
			request.setAttribute("video", video);
			request.getRequestDispatcher("views/user/video-detail.jsp").forward(request, response);
		}else {
			System.out.println("loiiiiiiiiiiiiiiii");
		}
		
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		String href = request.getParameter("id");
		
		List<Videos> videos = dao.findAll();
		request.setAttribute("videos", videos);
		if(action.equals("share")) {
			doPostShare(session,href, request, response);
		}
	}

	
	
	private void doPostShare(HttpSession session, String href,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("applocation/json");
		Dotenv dotenv = Dotenv.configure().load();
		Users  currenUsers = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		String email = request.getParameter("email");
		Videos video = dao.findOne(href);
		Share share = new Share();
		share.setUser(currenUsers);
		share.setVideo(video);
		share.setShareDate(new Timestamp(System.currentTimeMillis()));
		share.setEmail(email);
		Share share2 = sharedao.createShare(share);
		if(share2 != null) {
			 String user = dotenv.get("MY_ENV_VAR1");
	         String pass = dotenv.get("MY_EVV_VAR2");
	         String to = email;
	         String subject = "Bạn của bạn là " + currenUsers.getEmail() + " muốn gửi bạn video này";
	         String message = "https://www.youtube.com/watch?v=" +href;
	         Properties props = System.getProperties();
	         props.put("mail.smtp.auth", "true");
	         props.put("mail.smtp.starttls.enable", "true"); //TLS
	         props.put("mail.smtp.host", "smtp.gmail.com");
	         props.put("mail.smtp.port", "587");
	         props.put("mail.smtp.ssl.trust", "*"); //SSL
	         props.put("mail.smtp.ssl.protocols", "TLSv1.2"); //SSL

	         Session sessiona = Session.getInstance(props,
	                 new Authenticator() {
	                     protected PasswordAuthentication getPasswordAuthentication() {
	                         return new PasswordAuthentication(user, pass);
	                     }
	                 });
	         try {
	        	 Message messagea = new MimeMessage(sessiona);
	             messagea.setFrom(new InternetAddress(user));
	             messagea.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
	             messagea.setSubject(subject);
	             messagea.setText(message);
	             Transport.send(messagea);
	             response.sendRedirect("login");	            
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.setStatus(204); 
		}else {
			response.setStatus(400);
		}
		

	
	}
}
