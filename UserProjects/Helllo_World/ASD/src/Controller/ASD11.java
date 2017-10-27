package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. ASD11DAO;
import VO. ASD11VO;
@WebServlet("/ASD11")
public  class ASD11 extends HttpServlet {
private static final long serialVersionUID = 1L;
public ASD11() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
ASD11VO asd11VO = new ASD11VO();
ASD11DAO asd11DAO = new ASD11DAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =asd11DAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("ASD1/ASD11search.jsp");
}
else{

String username =request.getParameter("USERNAME").toString();
asd11VO.setUSERNAME(username);
asd11DAO.insert(asd11VO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}