package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// post , get 그리고 get에서도 뒤에 쿼리 스트링이 오는 친구냐에 따라. 그리고 그 타입에 따라서 로그인 분기점을 정해줘야함. 
		String method = request.getMethod();
		 if ( method.equals("GET")) {
			 
			 // 요청 값 뒤에 쿼리 스트링 있는 지 확인해야함. 
			 
			 String queryString = request.getQueryString();
			System.out.println(queryString);
			 if ( queryString != null && queryString.contains("type=all")) {
				 return "/member/join/auth_type.jsp";
			 } else if (queryString != null  && queryString.equals("mbrTypeCd=10")) {
				 return "/member/join/auth_typeCd10.jsp";
			 }
			 else {
				 return "/member/join/auth.jsp";
			 }	 
		 } else {
			 
		 }
		
		return null;
	}
}
