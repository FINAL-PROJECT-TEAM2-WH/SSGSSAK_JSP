package member.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoginService;

public class IdCheckHandler implements CommandHandler{
		
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = trim(request.getParameter("id"));			
		System.out.println("> IDCheckHandler .... " + id);		
		Map<String, Boolean> errors = new HashMap<>();

		request.setAttribute("errors", errors);
		if (id == null || id.isEmpty()) {	
			System.out.print(id);
			System.out.println("1");
			errors.put("id", Boolean.TRUE); 
		}
		if (!errors.isEmpty()) {
			System.out.println("2");
			List <String> list = new ArrayList(errors.keySet());
			for (String string : list) {
				System.out.println(string + " " + errors.get(string));
			}
			return null;
		}
		
		try {
			// { "count":1  }
			// { "count":0  }
			
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			LoginService service = new LoginService(dao);
			String idCheckJson = service.idCheck(id); 			
			request.setAttribute("idCheckJson", idCheckJson);
			String path = "/member/join/idCheck.jsp";
			JdbcUtil.close(conn);
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
			return null;
		} catch ( Exception e) {
			errors.put("idCheck", Boolean.TRUE);
			List <String> list = new ArrayList(errors.keySet());
			for (String string : list) {
				System.out.println(string + " " + errors.get(string));
			}
			e.printStackTrace();
			return null;
		} 
	}
	
	private String trim(String str) {
		return str == null ? null : str.trim();
	}

}
