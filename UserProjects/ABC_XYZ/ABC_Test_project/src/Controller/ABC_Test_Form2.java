package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. ABC_Test_Form2DAO;
import VO. ABC_Test_Form2VO;
@WebServlet("/ABC_Test_Form2")
public  class ABC_Test_Form2 extends HttpServlet {
private static final long serialVersionUID = 1L;
public ABC_Test_Form2() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
ABC_Test_Form2VO abc_test_form2VO = new ABC_Test_Form2VO();
ABC_Test_Form2DAO abc_test_form2DAO = new ABC_Test_Form2DAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =abc_test_form2DAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("ABC_Test_Module2/ABC_Test_Form2search.jsp");
}
else{

String username =request.getParameter("Username").toString();
abc_test_form2VO.setUsername(username);
String password =request.getParameter("Password").toString();
abc_test_form2VO.setPassword(password);
String email =request.getParameter("Email").toString();
abc_test_form2VO.setEmail(email);
String gender =request.getParameter("Gender").toString();
abc_test_form2VO.setGender(gender);
String country =request.getParameter("Country").toString();
abc_test_form2VO.setCountry(country);
String state =request.getParameter("State").toString();
abc_test_form2VO.setState(state);
String city =request.getParameter("City").toString();
abc_test_form2VO.setCity(city);
abc_test_form2DAO.insert(abc_test_form2VO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}