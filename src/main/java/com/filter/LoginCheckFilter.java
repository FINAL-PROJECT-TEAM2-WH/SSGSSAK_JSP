package com.filter;

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

/**
 * Servlet Filter implementation class LoginCheckFilter
 */
@WebFilter("/LoginCheckFilter")
public class LoginCheckFilter implements Filter {

	/**
	 * Default constructor. 
	 */
	public LoginCheckFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}


	public void doFilter(ServletRequest request
			, ServletResponse response
			, FilterChain chain) throws IOException, ServletException {
		System.out.println("> LoginCheckFilter.doFilter()");
		HttpServletRequest req = (HttpServletRequest)request; // 업캐스팅
		HttpServletResponse res = (HttpServletResponse)response; // 업캐스팅
		String contextPath = req.getContextPath();

		String auth = null; // 인증 ID
		boolean isAuth = false;

		//req.getSession(); // 세션 객체 없으면 생성해서 돌려주기 
		HttpSession session =  req.getSession(false); //세션 객체 없으면 null 돌려주기 
		if ( session != null && 
				(auth = (String)session.getAttribute("auth")) != null ) {
			isAuth = true;
		}
		String uri = req.getRequestURI();	
		System.out.println(uri);
		if (isAuth) { // 인증
			// if admin 폴더 안에 요청 auth="admin"
			if (auth.equals("admin")) {
				chain.doFilter(request, response);
			} else {
				if (uri.indexOf("admin") != -1) {
					System.out.println("허용되지 않습니다. ");
					String location = contextPath + "/mainPage.do" + "?auth:fail";
					res.sendRedirect(location);
				}else {
					chain.doFilter(request, response);
				}
				
			}
			
			
			
			//request.setAttribute("location", session)
		} else { // 인증 X
			String location = contextPath + "/member/login.do";
			res.sendRedirect(location);
		}


		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
