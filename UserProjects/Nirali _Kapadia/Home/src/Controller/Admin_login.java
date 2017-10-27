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
String email =request.getParameter("Email").toString();
admin_loginVO.setEmail(email);
String gender =request.getParameter("Gender").toString();
admin_loginVO.setGender(gender);
String[] hobbies =request.getParameterValues("Hobbies");
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
admin_loginVO.setHobbies(hobbies1);
String country =request.getParameter("Country").toString();
admin_loginVO.setCountry(country);
String address =request.getParameter("Address").toString();
admin_loginVO.setAddress(address);
String date =request.getParameter("Date").toString();
admin_loginVO.setDate(date);
String time =request.getParameter("Time").toString();
admin_loginVO.setTime(time);
admin_loginDAO.insert(admin_loginVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}