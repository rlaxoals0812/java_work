package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 /*특정 경로 요청에 대해서 클라가 로그인을 한 클라인지 확인 작업을 하는 필터 정의
 *1.Filter 인터페이스 구현
 *2. 추상메소드 오바라이트
 * @WebFilter 어노테이션을 이용해서 필터 맵핑
 */
@WebFilter({"/user/private/*"})
public class LoginFilter implements Filter{
	@Override
	public void destroy() {
		
		
	}@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("id");
		//만일 없다면
		if(id == null){
			//로그인 페이지로 리다이렉트 시키기
			String cPath = req.getContextPath();
			HttpServletResponse res = (HttpServletResponse)response;
			res.sendRedirect(cPath+"/user/loginForm.jsp");
		}else {//로그인을 한 사용자라면
			//관여하지않고 요청의 흐름을 이어간다(
			
			chain.doFilter(request, response);
		}
	
		
	}@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	
		
	}
}
