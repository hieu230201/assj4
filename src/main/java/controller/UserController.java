package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import constant.SessionAttr;
import dao.UserDao;
import entitys.Users;
import io.github.cdimascio.dotenv.Dotenv;


@WebServlet({"/login", "/logout", "/forgotPass", "/changePass"})
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final UserDao userDao = new UserDao();
 
    public UserController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			String url = request.getServletPath();
			if(url.equals("/login")) {
				request.getRequestDispatcher("/views/user/login.jsp").forward(request, response);
			}else if(url.equals("/forgotPass")){
				request.getRequestDispatcher("/views/user/forgotPass.jsp").forward(request, response);
			}else if (url.equals("/logout")) {
				session.removeAttribute(SessionAttr.CURRENT_USER);
				response.sendRedirect("login");
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			String url = request.getServletPath();
			if(url.equals("/login")) {
				doPostLogin(session,request, response);
			}else if(url.equals("/forgotPass")){
				doPostForgotPass(request, response);
			}else {
				doPostChangePass(session,request, response);
			}
	}
	 
	private void doPostChangePass(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String currenPass = request.getParameter("old");
		String newPass = request.getParameter("new");
		Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		if(u.getPassword().equals(currenPass)) {
			u.setPassword(newPass);
			Users updateU = userDao.updateUser(u);
			if(updateU != null) {
				session.setAttribute(SessionAttr.CURRENT_USER, updateU);
				response.setStatus(204);
			}else {
				response.setStatus(400);
			}
			
			  
		}else {
			response.setStatus(400);
		}
	}
	
	private void doPostLogin(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String email = request.getParameter("username");
			String pass = request.getParameter("pass");
			System.out.println(email);
			System.out.println(pass);
			Users u = userDao.findOne(email, pass);
			if(u != null) {
				session.setAttribute(SessionAttr.CURRENT_USER, u);				
				response.sendRedirect("index");
			}else {
				response.sendRedirect("login");
			}
	}
	
	
	private void doPostForgotPass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Dotenv dotenv = Dotenv.configure().load();
		 int code;
		 Random random = new Random();
         code = random.nextInt(99999);
         String user = dotenv.get("MY_ENV_VAR1");
         String pass = dotenv.get("MY_EVV_VAR2");
         String to = request.getParameter("username");
         String subject = "Vui lòng không cho bất cứ ai biết mật khẩu này";
         String message = "Mật khẩu mới của bạn là " + code;
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
             Users u = userDao.findByEmail(to);
             u.setPassword(String.valueOf(code));
             u = userDao.updateUser(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
         
	}

	
	
	

}
