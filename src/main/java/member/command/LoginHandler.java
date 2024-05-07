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

import controller.CommandHandler;
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
		System.out.println(method);
		if ( method.equals("GET")) {
				
			// GET 요청으로 주소 돌려주기 
			
			
			// servletPath << 이거 SSGSSAK 뒤의 값을 돌려줌 . 
			String servletPath = request.getServletPath();
			String path = "";
			System.out.println("1 " + servletPath);
			if ( servletPath.equals("/member/login/popup.do")) {
				 path = "/member/loginPage_new_Form.jsp";
				 return path;			 
			} else {	
				path = contextPath + "/member/login_Full.jsp";				
				response.sendRedirect(path);
			}
				
		} else {
			// P	OST 요청 
			
			// 의존성 주입 
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			LoginService service = new LoginService(dao);
			
			MemberDTO loginMember = null;
			String id = request.getParameter("mbrLoginId");
			String passwd = request.getParameter("password");
			
			System.out.println("LoginHandler : " + id);
			System.out.println("LoginHandler : " + passwd);
		
			// 테스트 완료 
	
			loginMember = service.idcheck(id, passwd);
			
			if ( loginMember == null) {
				String redirectPath = contextPath + request.getServletPath();
				response.sendRedirect(redirectPath);
			}
			
			HttpSession session = request.getSession();
		
			session.setAttribute("auth", loginMember.getId());
		 
			 
			 String path = "/member/login.jsp";
			 
			
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				 dispatcher.forward(request, response);
				 
			 response.sendRedirect(path);
			 
			 //session.setAttribute("auth",loginMember);
			// 정확히는 쿠키에 저장하는 거임 .
			  
			 // 
			  //RequestDispatcher dispatcher =
			  //request.getRequestDispatcher(path); 
			 // dispatcher.forward(request, response);
		
		}
		return null;
	}
	
}

