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
response.sendRedirect("Test1/Registrationsearch.jsp");
}
else{

String username =request.getParameter("Username").toString();
registrationVO.setUsername(username);
String password =request.getParameter("Password").toString();
registrationVO.setPassword(password);
String email =request.getParameter("Email").toString();
registrationVO.setEmail(email);
String phone =request.getParameter("Phone").toString();
registrationVO.setPhone(phone);
String[] hobbies =request.getParameterValues("hobbies");
String hobbies1 = "";
if(hobbies!=null && hobbies.length !=0) {
for(int i=0;i<hobbies.length; i++) {
if(hobbies.length==i+1){
hobbies1 = hobbies1 + hobbies[i];
}else{
hobbies1 = hobbies1 + hobbies[i]+",";
}
}
}
registrationVO.sethobbies(hobbies1);
String gender =request.getParameter("gender").toString();
registrationVO.setgender(gender);
registrationDAO.insert(registrationVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}