package member.command;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoginLogInfoService;

public class LoginLogHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// GET 요청 시에는 LOGIN LOG 요청으로 가고 
		// 가면서 log기록들을 뿌려줘야됨 여태까지 어떻게 로그인을 했는지? 에 대해 . 
		// 로그인 핸들러에다가 cookie Header를 잡고 IP 값을 딴 다음에... 
		String method = request.getMethod();
		String contextPath = request.getContextPath();
		String path;
		String id;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		if ( session == null) {
			System.out.println("> login Error");
			return null;
		} else {
			id = (String)session.getAttribute("auth");
		}
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		int rowCount = 0;
		
		if (method.equalsIgnoreCase("GET")) {
			LoginLogInfoService loginfoservice = new LoginLogInfoService(dao);
			
			
		}
		
		// POST 요청 시에는 로그인 2차 인증 동의 ? 세션 변경해주기 . 
		
		return null;
	}

}
