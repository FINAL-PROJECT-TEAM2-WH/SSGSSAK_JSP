package member.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.ChangePwdService;
import member.service.LoginService;

public class ChangePwdHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// passWord 변경
		
		String method = request.getMethod();
		String contextPath = request.getContextPath();
		if (method.equalsIgnoreCase("GET")) {
			return "/userinfo/myInfoMng/changePwd.jsp";
		} else {
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			ChangePwdService service = new ChangePwdService(dao);
			
			MemberDTO loginMember = null;
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("auth");
			String passwd = request.getParameter("newPwd");
			
			int rowCount = service.changePwd(id, passwd);
			
			if ( rowCount == 1 ) {
				System.out.println("비밀번호 변경 성공");
				LogoutHandler logoutHandler = new LogoutHandler();
				logoutHandler.process(request, response);
			} else {
				System.out.println("비밀번호 변경 실패");
				return "/userinfo/myInfoMng/changePwd.jsp";
			}
			
			
		}
		
		return null;
	}

	
}
