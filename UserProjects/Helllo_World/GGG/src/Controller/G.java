package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO. GDAO;
import VO. GVO;
@WebServlet("/G")
public  class G extends HttpServlet {
private static final long serialVersionUID = 1L;
public G() {
super();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.getWriter().append("Served  at:  ").append(request.getContextPath());
GVO gVO = new GVO();
GDAO gDAO = new GDAO();String flag = request.getParameter("flag");
if (flag.equals("search")) {
List ls =gDAO.search();
HttpSession s = request.getSession();
s.setAttribute("ls", ls);
response.sendRedirect("GG/Gsearch.jsp");
}
else{

String username =request.getParameter("USERNAME").toString();
gVO.setUSERNAME(username);
gDAO.insert(gVO);
}
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
}
}