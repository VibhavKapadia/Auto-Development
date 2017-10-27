package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. User_loginDAO;
import VO. User_loginVO;
@WebServlet("/User_login")
public  class User_login extends HttpServlet {
private static final long serialVersionUID = 1L;
public User_login() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
User_loginVO user_loginVO = new User_loginVO();
User_loginDAO user_loginDAO = new User_loginDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =user_loginDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("User/User_loginsearch.jsp");
}
else{

String username =request.getParameter("Username").toString();
user_loginVO.setUsername(username);
String password =request.getParameter("Password").toString();
user_loginVO.setPassword(password);
String email =request.getParameter("Email").toString();
user_loginVO.setEmail(email);
user_loginDAO.insert(user_loginVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}