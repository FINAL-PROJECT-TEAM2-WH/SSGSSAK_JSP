package member.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoadInfoService;
import pay.persistence.PayDAO;
import pay.persistence.PayImpl;
public class MemberInfoHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		// String id 값으로 받고
		HttpSession session = request.getSession();
		
		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		String id = (String)session.getAttribute("auth");
		
		Connection conn = ConnectionProvider.getConnection();
		PayDAO dao = new PayImpl(conn);
		//LoadInfoService service = new LoadInfoService(dao);
		
		
		return null;
	}

	
		
}
