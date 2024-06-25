package test.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import test.member.dto.MemberDto;

@WebServlet("/member")
public class MemberServlet extends HttpServlet{
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			MemberDto dto = new MemberDto();
			dto.setNum(1);
			dto.setName("김구라");
			dto.setAddr("노량진");
			
			req.setAttribute("dto",dto);

			//클라이언트에게 응답은 jsp 페이지에 위임한다 (forward 이동)
			RequestDispatcher rd = req.getRequestDispatcher("/test/member.jsp");
			rd.forward(req, resp);
	}
}
	
