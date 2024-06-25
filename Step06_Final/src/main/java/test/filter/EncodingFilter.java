package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/*
 * post방식 전송될 때 인코딩 설정을 해주지 않으면 한글이 깨지기 때문에
 * 필터에서 일괄적으로 인코딩 설정해주기
 */
@WebFilter("/*")
public class EncodingFilter implements Filter{
	@Override
	public void destroy() {

		
	}@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if(request.getCharacterEncoding()==null) {
			request.setCharacterEncoding("utf-8");
		}
		chain.doFilter(request, response);
		
	}@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
}
