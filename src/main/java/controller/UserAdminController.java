package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class UserAdminController
 */
@WebServlet("/admin/user")
public class UserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final UserDao userDao = new UserDao();
  
    public UserAdminController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		if(u == null || u.getAdmin() == 0) {
			response.sendRedirect("index");
		}else{
			String action = request.getParameter("action");
			
			if(action.equals("add")) {
				request.setAttribute("isEdit", false);
				request.getRequestDispatcher("/views/admin/user.jsp").forward(request, response);
			}else if (action.equals("view")) {
				response.sendRedirect("http://localhost:8080/baitapcuoi_war_exploded/admin");
				
			}else if (action.equals("delete")) {
				doGetDelete(request, response);
			}else {
				String id = request.getParameter("id");
				Users uEdit = userDao.findByID(id);
				request.setAttribute("user", uEdit);
				request.setAttribute("isEdit", true);
				request.getRequestDispatcher("/views/admin/user.jsp").forward(request, response);
			}
			
		}
	}
	
	
	
	private void doGetDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String id = request.getParameter("id");
		Users u = userDao.findByID(id);
		System.out.println(u.getEmail());
		u.setIsActive((byte) 0);
		Users userDelete = userDao.updateUser(u);
		if(userDelete.getIsActive() == 0) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users u = (Users) session.getAttribute(SessionAttr.CURRENT_USER);
		if(u == null || u.getAdmin() == 0) {
			response.sendRedirect("index");
		}else{
			String action = request.getParameter("action");
			if(action.equals("add")) {
				doPostAdd(request, response);
			}else if (action.equals("edit")) {
				doPostEdit(request, response);
			}
			
		}
	}
	
	protected void doPostEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		  
		response.setContentType("application/json");
		String name = request.getParameter("name");
		String pass1 = request.getParameter("pass");
		String email = request.getParameter("email");
		boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
		String id = request.getParameter("id");
		
		Users u = userDao.findByID(id);
		u.setFullname(name);
		u.setEmail(email);
		u.setPassword(pass1);
		u.setIsActive((byte)1);
		if(gender) {
			u.setAdmin((byte)0);
		}else {
			u.setAdmin((byte)1);
		}
		
		Users user = userDao.updateUser(u);
		if(user != null) {
			response.setStatus(204);
		}else {
			response.setStatus(400);
		}
		
	}
	
	protected void doPostAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		  
		response.setContentType("application/json");
		String name = request.getParameter("name");
		String pass1 = request.getParameter("pass");
		String email = request.getParameter("email");
		PrintWriter pw = null;
		if (name == null){

		}
		if(email == null){
			response.setStatus(400);
		}else {
			boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
			Users u = new Users();
			u.setFullname(name);
			u.setEmail(email);
			u.setPassword(pass1);
			u.setIsActive((byte)1);
			if(gender) {
				u.setAdmin((byte)0);
			}else {
				u.setAdmin((byte)1);
			}

			Users user = userDao.createUser(u);
			if(user != null) {
				response.setStatus(204);
			}else {
				response.setStatus(400);
			}
		}

		
	}
	

}
