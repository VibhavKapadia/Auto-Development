package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. LoginDAO;
import VO. LoginVO;
@WebServlet("/Login")
public  class Login extends HttpServlet {
private static final long serialVersionUID = 1L;
public Login() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
LoginVO loginVO = new LoginVO();
LoginDAO loginDAO = new LoginDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =loginDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("Test2/Loginsearch.jsp");
}
else{

String user name =request.getParameter("User Name").toString();
loginVO.setUser Name(user name);
String password =request.getParameter("Password").toString();
loginVO.setPassword(password);
loginDAO.insert(loginVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}