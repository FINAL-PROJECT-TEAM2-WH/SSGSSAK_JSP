package member.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoginService;
import member.service.LogoutService;

public class LogoutHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//logout
		
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		LogoutService service = new LogoutService(dao);		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("auth");
		System.out.println(id);
		int rowCount = service.logout(id);
		
		
		if ( rowCount == 1 ) {					
			System.out.println(id + "로그아웃 성공");
			session.invalidate();
		}	
		JdbcUtil.close(conn);
		///mainProd.do
		String path = request.getContextPath() + "/main/mainPage/mainPage.jsp";
		response.sendRedirect(path);
			
		return null;
	}
	
}
