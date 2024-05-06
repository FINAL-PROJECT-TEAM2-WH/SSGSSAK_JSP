package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//logout
		HttpSession session = request.getSession();
		session.invalidate();
		String path = request.getContextPath() + "/mainPage.jsp";
		response.sendRedirect(path);
			
		return null;
	}
	
}
