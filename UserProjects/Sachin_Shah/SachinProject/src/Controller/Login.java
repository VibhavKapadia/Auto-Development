package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. RegistrationDAO;
import VO. RegistrationVO;
@WebServlet("/Registration")
public  class Registration extends HttpServlet {
private static final long serialVersionUID = 1L;
public Registration() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
RegistrationVO registrationVO = new RegistrationVO();
RegistrationDAO registrationDAO = new RegistrationDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =registrationDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("Admin/Registrationsearch.jsp");
}
else{

String country =request.getParameter("Country").toString();
registrationVO.setCountry(country);
String state =request.getParameter("State").toString();
registrationVO.setState(state);
String city =request.getParameter("City").toString();
registrationVO.setCity(city);
registrationDAO.insert(registrationVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}