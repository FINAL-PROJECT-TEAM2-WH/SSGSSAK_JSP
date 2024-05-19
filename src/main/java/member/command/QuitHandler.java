package member.command;

import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.ChangeInfoService;
import member.service.LoadInfoService;
import member.service.LogoutService;
import member.service.QuitMbrService;
import net.sf.json.JSONObject;

public class QuitHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1. get 요청 시에 회원 탈퇴 사이트로 Post 요청 시에 회원 탈퇴 완료로 .
		String method = request.getMethod();
		
		HttpSession session = request.getSession();
		String id = "";
		String contextPath = request.getContextPath();
		String path;
		
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
	
		if ( method.equalsIgnoreCase("GET")) {
			// GET 요청
		
			System.out.println(" > changeInfoHandler 'GET' get in");
			Map<String,String> infoMap = new HashMap<String, String>();
			
			LoadInfoService service = new LoadInfoService(dao);
			infoMap = service.loadInfo(id);	 

			infoMap.put("id", id);
		
			request.setAttribute("info", infoMap);
		
			path = "/userinfo/myInfoMng/quitMbr.jsp";
			JdbcUtil.close(conn);
			dispatcher = request.getRequestDispatcher(path); 
			dispatcher.forward(request, response);		
			
		} else {
			// POST 요청
			String quitReason = request.getParameter("quitReason");
			System.out.println(quitReason);
			System.out.println(" > QuitHandler 'POST' in ");
			//아이디를 주면 삭제하는 코드  
			QuitMbrService service = new QuitMbrService(dao);
			rowCount = service.quitMbr(id, quitReason);
			String resultJson = "{\"result\":";
			JSONObject jsonObject = new JSONObject();
			if (rowCount >= 1) {
				//SUCCESS 
				resultJson += "\"Success\"}";
				
				LogoutService logoutService = new LogoutService(dao);
				if ( logoutService.logout(id) >= 1) {
					session.invalidate();
					System.out.println("로그아웃 성공");
				} else {
					System.out.println("로그아웃 실패");
				}
				
			} else {
				// FAIL
				resultJson += "\"Fail\"}";
			}
			JdbcUtil.close(conn);
			System.out.println(resultJson);
			jsonObject.put("result", resultJson);
			response.setContentType("application/json; charset=UTF-8");
			response.getWriter().write(jsonObject.toString());
			
		}
		
		return null;
	}
	
}
