package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import test.member.dto.MemberDto;

@WebServlet("test/save")
public class SaveServlet extends HttpServlet{
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String nick = req.getParameter("nick");
	
	HttpSession session = req.getSession();
	session.setAttribute("nick", nick);
	
	resp.setCharacterEncoding("utf-8");
	resp.setContentType("text/html; charset=utf-8");
	
	PrintWriter pw = resp.getWriter();
	pw.println("<!doctype html>");
	pw.println("<html>");
	pw.println("<head>");
	pw.println("<meta charset='utf-8'>");
	pw.println("<title>SaveServlet</title>");
	pw.println("</head>");
	pw.println("<body>");
	
	pw.println("<p> <strong>"+nick+"</strong> 이라는 닉네임을 기억 하겠습니다</p>");
	pw.println("<a href='../index.jsp' >인덱스로</a>");
	
	pw.println("</body>");
	pw.println("</html>");
	pw.close();
	
	
	}
}

