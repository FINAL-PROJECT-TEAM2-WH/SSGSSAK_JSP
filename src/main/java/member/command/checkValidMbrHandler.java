package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class checkValidMbrHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		String contextPath = request.getContextPath();
		String path = contextPath + "/member/checkMbr.jsp";
		response.sendRedirect(path);
		
		return null;
	}

}
