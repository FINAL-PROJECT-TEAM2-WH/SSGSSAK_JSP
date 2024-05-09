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
			Map<String,String> infoMap = new HashMap<String, String>();
			Connection conn = ConnectionProvider.getConnection();
			MemberDAO dao = new MemberDAOImpl(conn);
			AgreeInfoService service = new AgreeInfoService(dao);
			infoMap = service.originInfoLoad(id);	
			infoMap.put("id", id);
			request.setAttribute("info", infoMap);
			String path = "/userinfo/myInfoMng/infoRcvAgree.jsp";
			dispatcher = request.getRequestDispatcher(path); 
			dispatcher.forward(request, response);
		} else {
			/*
			 * // POST 요청 System.out.println(" > changeInfoHandler 'POST' get in"); String
			 * cPhoneNum = (String)request.getParameter("mbrCntsano"); String pPhoneNum =
			 * (String)request.getParameter("mbrCntsELno"); String cEmail =
			 * (String)request.getParameter("email");
			 * 
			 * System.out.println( " > ChangeInfo Handler get in : " + id);
			 * 
			 * System.out.println(id + " " + cPhoneNum + " " + cEmail); cPhoneNum +=
			 * pPhoneNum; Connection conn = ConnectionProvider.getConnection(); MemberDAO
			 * dao = new MemberDAOImpl(conn); ChangeInfoService service = new
			 * ChangeInfoService(dao); int rowCount =
			 * service.changeinfo(id,cPhoneNum,cEmail); String path =
			 * "/userinfo/myInfoMng/changeInfoProcess.jsp";
			 * 
			 * 
			 * 
			 * String resultJson = "{\"resultCode\":"; if (rowCount >= 1) {
			 * System.out.println("회원정보가 변경됐습니다."); // userinfo페이지로 이동. resultJson +=
			 * "\"SUCCESS\", \"resultMsg\":\"SUCCESS\"}"; System.out.println(resultJson); }
			 * else { System.out.println("회원정보 변경 실패"); resultJson +=
			 * "\"FALSE\", \"resultMsg\":\"FALSE\"}"; System.out.println(resultJson); }
			 * request.setAttribute("resultJson", resultJson); dispatcher =
			 * request.getRequestDispatcher(path); dispatcher.forward(request, response);
			 */
		}
		
		
		
		return null;
	}

}
