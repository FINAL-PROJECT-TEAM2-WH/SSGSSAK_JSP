package product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import controller.CommandHandler;
import net.sf.json.JSONObject;

public class CheckLoginHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 System.out.println("CheckLoginHandler called");
		HttpSession session = request.getSession();
		boolean alreadyLogin = session.getAttribute("auth") != null;
		
		
		JSONObject json = new  JSONObject();
		json.put("alreadyLogin", alreadyLogin);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json.toString());
		
		
		return null;
	}//process
	
}//class
