package member.command;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class checkValidMbrHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String method = request.getMethod();
		
		
		String contextPath = request.getContextPath();
		String path = contextPath + "/member/checkMbr.jsp";
		
		Enumeration<String> enumeration = request.getHeaderNames();
		
		while (enumeration.hasMoreElements()) {
			String string = enumeration.nextElement();
			System.out.printf("key : %s || Value : %s ", string, request.getHeader(string));
		}
		if (method.equalsIgnoreCase("GET")) {
			// 아이디 체크 GET 요청 => 체크 사이트로 리턴.  
			response.sendRedirect(path);
		} else {
			// 아이디 체크할 값 바탕으로 체크하는 핸들러 거쳐서. 보여주기 . 
			
		}
		
		
		
		return null;
	}

}
