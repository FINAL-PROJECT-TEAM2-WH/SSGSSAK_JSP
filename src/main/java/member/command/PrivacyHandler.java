package member.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class PrivacyHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {


		String method = request.getMethod();
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		if ( method.equalsIgnoreCase("GET")) {
			
			// GET 요청일 시에는 url을 바탕으로 privacy 친구들을 분기 해준다.
			System.out.println(" > GET IN Agreement GET Method ");
			String queryString = request.getQueryString();
			System.out.println(queryString);
			System.out.println(uri);

			
			if (queryString.contains("signup_terms02")) {	
				// 수정 요함. 
				return "/member/join/signup_terms02.jsp";
			}
			else if (queryString.contains("signup_terms01")) {
				return "/member/join/signup_terms02.jsp";
			}
			else if (queryString.contains("signup_terms06")) {
				return "/member/join/signup_terms06.jsp";
			}
			else if (queryString.contains("M100001")) {
				return "/member/polices/termPopup.jsp";
			}
			else if (queryString.contains("signup_terms_scom01")) {
				//수정 요함 . 
				return "/member/polices/termPopup.jsp";
			}
			
			
			
		} else {
			// POST 요청일 시에는 입력한 값을 request 객체에 담고 Cookie로 저장을 해서 클라이언트에 올린다.
			// 최종장에서 넘겨주면 됨. 
			/*
			 * Map <String,String[]> requeMap = request.getParameterMap(); Cookie [] cookies
			 * = request.getCookies();
			 * 
			 * for (Cookie cookie : cookies) { System.out.println("쿠키 이름: " +
			 * cookie.getName()); System.out.println("쿠키 값: " + cookie.getValue()); }
			 * 
			 * List <String> list = new ArrayList(requeMap.keySet());
			 * 
			 * for (int i = 0; i < list.size(); i++) { String key = list.get(i); String []
			 * valueArr = requeMap.get(key); for (String string : valueArr) {
			 * System.out.println(key + " : " + string); } }
			 */
			
			String path = "/member/join/form.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);			
		}
		
		
		
		
		
		return null;
	}

	
	
}
