package member.command;

import java.net.HttpCookie;
import java.sql.Connection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.SessionConst;
import com.util.SessionManager;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoginService;

public class LoginHandler implements CommandHandler {
	


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// post , get 그리고 get에서도 뒤에 쿼리 스트링이 오는 친구냐에 따라. 그리고 그 타입에 따라서 로그인 분기점을 정해줘야함. 
		String contextPath = request.getContextPath();
		String method = request.getMethod();
		if ( method.equals("GET")) {
			//logout
			HttpSession session = request.getSession();
			session.invalidate();
			String path = request.getContextPath() + "/mainPage.jsp";
			response.sendRedirect(path);
			
		} else {
			// POST 요청 
			
			
			// 의존성 주입 
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			LoginService service = new LoginService(dao);
			
			MemberDTO loginMember = null;
			String id = request.getParameter("mbrLoginId");
			String passwd = request.getParameter("password");
			
			System.out.println(id);
			System.out.println(passwd);
		
			// 테스트 완료 
			String token = UUID.randomUUID().toString();
			loginMember = service.idcheck(id, passwd);
			 HttpSession session = request.getSession();
			 session.setAttribute("auth",loginMember);
			// 정확히는 쿠키에 저장하는 거임 .
			  
			  String path = "/member/login.jsp";
			  RequestDispatcher dispatcher =
			  request.getRequestDispatcher(path); 
			  dispatcher.forward(request, response);
		
		}

		return null;
	}

}

