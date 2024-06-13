package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/todo/list")
public class TodoListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<String> todo = new ArrayList<>();
		todo.add("html");
		todo.add("css");
		todo.add("js");
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");
		//요청을 한 클라이언트에게 문자열을 출력할수 있는 객체의 참조값 얻어내기
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>todo page</title>");
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<h3>할일 목록</h3>");
			pw.println("<ul>");
				pw.println("<li>"+todo.get(0)+"</li>");
				pw.println("<li>"+todo.get(1)+"</li>");
				pw.println("<li>"+todo.get(2)+"</li>");
			pw.println("</ul>");
			pw.println("<ul>");
				for(int i = 0; i<todo.size(); i++) {
					String tmp = todo.get(i);
					pw.println("<li>"+tmp+"</li>");
				}
			pw.println("</ul>");
			pw.println("<ul>");
				for(String tmp:todo) {
					pw.println("<li>"+tmp+"</li>");
				}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
