package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. ABC_Test_Form1DAO;
import VO. ABC_Test_Form1VO;
@WebServlet("/ABC_Test_Form1")
public  class ABC_Test_Form1 extends HttpServlet {
private static final long serialVersionUID = 1L;
public ABC_Test_Form1() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
ABC_Test_Form1VO abc_test_form1VO = new ABC_Test_Form1VO();
ABC_Test_Form1DAO abc_test_form1DAO = new ABC_Test_Form1DAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =abc_test_form1DAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("ABC_Test_Module1/ABC_Test_Form1search.jsp");
}
else{

String username =request.getParameter("Username").toString();
abc_test_form1VO.setUsername(username);
String password =request.getParameter("Password").toString();
abc_test_form1VO.setPassword(password);
String email =request.getParameter("Email").toString();
abc_test_form1VO.setEmail(email);
String gender =request.getParameter("Gender").toString();
abc_test_form1VO.setGender(gender);
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
abc_test_form1VO.setHobbies(hobbies1);
String address =request.getParameter("Address").toString();
abc_test_form1VO.setAddress(address);
String birthday =request.getParameter("Birthday").toString();
abc_test_form1VO.setBirthday(birthday);
abc_test_form1DAO.insert(abc_test_form1VO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}