package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. Admin_loginDAO;
import VO. Admin_loginVO;
@WebServlet("/Admin_login")
public  class Admin_login extends HttpServlet {
private static final long serialVersionUID = 1L;
public Admin_login() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
Admin_loginVO admin_loginVO = new Admin_loginVO();
Admin_loginDAO admin_loginDAO = new Admin_loginDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =admin_loginDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("Admin/Admin_loginsearch.jsp");
}
else{

String username =request.getParameter("Username").toString();
admin_loginVO.setUsername(username);
String password =request.getParameter("Password").toString();
admin_loginVO.setPassword(password);
admin_loginDAO.insert(admin_loginVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}