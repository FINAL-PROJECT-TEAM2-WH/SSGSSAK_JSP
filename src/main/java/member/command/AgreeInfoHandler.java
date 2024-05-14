package member.command;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.AgreeInfoService;



public class AgreeInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		
		System.out.println(" > AgreeInfoHandler get in");
		HttpSession session = request.getSession();
		String id = "";
		String contextPath = request.getContextPath();
		RequestDispatcher dispatcher = null;
		if ( session == null) {
			System.out.println("> login Error");
			return null;
		} else {
			id = (String)session.getAttribute("auth");
		}
	
		String method = request.getMethod();
		
		if ( method.equalsIgnoreCase("GET")) {
			// GET 요청 
			// GET 요청 시에는 회원 정보 값들을 불러와서 기존 값에 넣어줘야함. 
			System.out.println(" > AgreeInfoHandler 'GET' get in");
			
			String queryString = request.getQueryString();
			System.out.println(queryString);
		
			Map<String,String> infoMap = new HashMap<String, String>();
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			AgreeInfoService service = new AgreeInfoService(dao);
			infoMap = service.originInfoLoad(id, queryString);	
			infoMap.put("id", id);
			request.setAttribute("info", infoMap);
			String path = "/userinfo/myInfoMng/infoRcvAgree.jsp";
			dispatcher = request.getRequestDispatcher(path); 
			dispatcher.forward(request, response);
		} else {
			// POST 요청
			System.out.println(" > AgreeInfoHandler 'POST' get in ");
			String addtInfoAgree = request.getParameter("addtInfoAgree");
			String emailRcvYn = request.getParameter("emailRcvYn");
			String smsRcvYn = request.getParameter("smsRcvYn");
			
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			AgreeInfoService service = new AgreeInfoService(dao);
			
		}
		
		
		
		return null;
	}

}
