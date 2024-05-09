package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import member.service.LoginService;

public class IdCheckHandler implements CommandHandler{

	private LoginService loginService = new LoginService();
		
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = trim(request.getParameter("id"));	
		
		System.out.println("> IDCheckHandler .... ");
	
		if (id == null || id.isEmpty())
			System.out.println("1");
			errors.put("id", Boolean.TRUE); 
		if (!errors.isEmpty()) {
			System.out.println("2");
			return null;
		}
		
		try {
			// { "count":1  }
			// { "count":0  }
			String idCheckJson = loginService.idCheck(id); 
			return idCheckJson;
		} catch ( Exception e) {
			errors.put("idCheck", Boolean.TRUE);
			return null;
		} 
	}
	
	private String trim(String str) {
		return str == null ? null : str.trim();
	}

}
