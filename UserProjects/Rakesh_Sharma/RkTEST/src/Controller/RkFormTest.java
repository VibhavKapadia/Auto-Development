package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. RkFormTestDAO;
import VO. RkFormTestVO;
@WebServlet("/RkFormTest")
public  class RkFormTest extends HttpServlet {
private static final long serialVersionUID = 1L;
public RkFormTest() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
RkFormTestVO rkformtestVO = new RkFormTestVO();
RkFormTestDAO rkformtestDAO = new RkFormTestDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =rkformtestDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("RkTestModule/RkFormTestsearch.jsp");
}
else{

String username =request.getParameter("Username").toString();
rkformtestVO.setUsername(username);
String password =request.getParameter("Password").toString();
rkformtestVO.setPassword(password);
rkformtestDAO.insert(rkformtestVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}