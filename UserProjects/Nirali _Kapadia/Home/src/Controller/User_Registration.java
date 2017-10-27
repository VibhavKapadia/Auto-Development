package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. User_RegistrationDAO;
import VO. User_RegistrationVO;
@WebServlet("/User_Registration")
public  class User_Registration extends HttpServlet {
private static final long serialVersionUID = 1L;
public User_Registration() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
User_RegistrationVO user_registrationVO = new User_RegistrationVO();
User_RegistrationDAO user_registrationDAO = new User_RegistrationDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =user_registrationDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("User/User_Registrationsearch.jsp");
}
else{

String username =request.getParameter("Username").toString();
user_registrationVO.setUsername(username);
String password =request.getParameter("Password").toString();
user_registrationVO.setPassword(password);
user_registrationDAO.insert(user_registrationVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}