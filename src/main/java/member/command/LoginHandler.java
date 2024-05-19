package member.command;

import java.net.HttpCookie;
import java.sql.Connection;
import java.time.LocalDateTime;
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
import com.util.JdbcUtil;

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
			// POST 요청 
			request.setCharacterEncoding("UTF-8");
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
			
		
			Map<String,String> loginLogMap = new HashMap();
			Cookie [] cookies =  request.getCookies();
			Map<String, Cookie> cookieMap = new HashMap<>();
		        if (cookies != null) {
		            for (Cookie cookie : cookies) {
		                cookieMap.put(cookie.getName(), cookie);
		            }
		        }
		    // platform 
		    String platform = request.getHeader("sec-ch-ua-platform");
		    loginLogMap.put("platform", platform);
		    
		    // ip 
		    Cookie au_ip = cookieMap.get("au_ip");
		    loginLogMap.put("au_ip",  au_ip.getValue());  
		    
		    // browser 
		    String userAgent = request.getHeader("User-Agent");
	        String browserType = detectBrowser(userAgent);
	        loginLogMap.put("browserType", browserType);
			
	        // 요청 시각
	        LocalDateTime requestTime = LocalDateTime.now();
	        loginLogMap.put("requestTime", requestTime.toString());
	        int rowCount = 0;
	        rowCount = service.regiLoginLog(loginLogMap, id);
	        if ( rowCount < 1) {
	        	String redirectPath = contextPath + request.getServletPath();
				response.sendRedirect(redirectPath);
	        }
	        
	        
			HttpSession session = request.getSession();
		
			session.setAttribute("auth", loginMember.getId());
		 
			 
			 String path = "/member/login.jsp";	
			 JdbcUtil.close(conn);
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
				
			 
			 //session.setAttribute("auth",loginMember);
			// 정확히는 쿠키에 저장하는 거임 .
			  
			 // 
			  //RequestDispatcher dispatcher =
			  //request.getRequestDispatcher(path); 
			 // dispatcher.forward(request, response);
		
		}
		return null;
	}
	
	 // 브라우저 타입을 판별하는 메서드
    private String detectBrowser(String userAgent) {
        if (userAgent == null) return "Unknown Browser";
        
        if (userAgent.contains("MSIE") || userAgent.contains("Trident")) {
            return "Internet Explorer";
        } else if (userAgent.contains("Firefox")) {
            return "Mozilla Firefox";
        } else if (userAgent.contains("Chrome")) {
            // Google Chrome이 User-Agent에 'Safari'도 포함하므로 순서가 중요합니다.
            if (userAgent.contains("Edg")) {
                return "Microsoft Edge"; // Edge 브라우저는 'Edg'를 포함합니다.
            }
            return "Google Chrome";
        } else if (userAgent.contains("Safari")) {
            // Safari는 Chrome 이후에 검사해야 합니다.
            return "Safari";
        } else if (userAgent.contains("Opera") || userAgent.contains("OPR")) {
            return "Opera";
        } else {
            return "Other Browser";
        }
    }
	
}

