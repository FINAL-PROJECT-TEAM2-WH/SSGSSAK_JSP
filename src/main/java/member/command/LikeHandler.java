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
import member.service.LikeService;

public class LikeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// like 요청이 일어나면 like insert 문에 들어가야합니다.
		// like 상품번호를 넘겨준다. 분기 처리 상품, 브랜드, 카테 like를 queryString으로 분기 처리 해줄거임.
		// 1. like

		HttpSession session = request.getSession();

		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		String id = (String)session.getAttribute("auth");	
		System.out.println("> LikeHandler GET IN...");
		// queryString 분기
		String productId = request.getParameter("productid");
		String status = request.getParameter("status");
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		LikeService service = new LikeService(dao);
		int rowCount = 0 ;
		String resultJson = "{\"result\":";
		if (status != null ) {
			// 다시 요청이 온거임 . 
			rowCount = service.cancelLike(id,productId);
			if (rowCount >= 1) {
				resultJson += "\"DeleteSuccess\"}";
			}
		} else {
			rowCount =  service.checkLike(id, productId);
			
			if ( rowCount >= 1) {
				resultJson += "\"Invalid\"}";
			} else {
				rowCount = service.insLike(id, productId);			
				if ( rowCount >= 1 ) {
					resultJson += "\"Success\"}";			
				}else {
					resultJson += "\"Fail\"}";
				}			
			}	
		}		
		conn.close();
		// 중복 체크 먼저 해줘야함 . 		
		request.setAttribute("resultJson" , resultJson);
		String path = "/userinfo/like/likeResult.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	

		/*
		 * if (queryString.contains("?product=")) { // 상품 분기 request.getParameter()
		 * 
		 * 
		 * } else if (queryString.contains("?brand=")) {
		 * 
		 * } else if (queryString.contains("?category=")) {
		 * 
		 * }
		 */

		return null;
	}

}
