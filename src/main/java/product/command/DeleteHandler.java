package product.command;

import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.persistence.BoardDAOImpl;


public class DeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		String method = request.getMethod();
		System.out.println(method);
		if (method.equals("GET")) {
			System.out.println(request.getQueryString());
			return "/days06/board/delete.jsp";  // 확인. 
		} else {
			
			request.setCharacterEncoding("UTF-8");
			System.out.println(request.getQueryString());
			int pseq = Integer.parseInt(request.getParameter("seq"));
			String ppwd = request.getParameter("pwd"); // 파라미터 비밀번호
			System.out.println(ppwd);
			int searchCondition = 1; 
			 Connection conn = ConnectionProvider.getConnection();
			 BoardDAOImpl dao = new BoardDAOImpl(conn);
		     int rowcount = 0;
		     String originalPwd;
		     String location = "/jspPro/board/";

		     int currentPage = 0;
		     String searchWord = null;
		     try {
		    	 currentPage = Integer.parseInt(request.getParameter("currentpage"));
					System.out.println(currentPage);
					searchWord = request.getParameter("searchWord");
		     } catch (Exception e) {
				currentPage = 1; 
				searchWord = null;
		     }
			

		     try {
		    	 
		    	 originalPwd = dao.getOriginalPwd((int)pseq);
		    	 System.out.println(originalPwd.isEmpty());
		    	 
		    	 if ( originalPwd.equals(ppwd)) {
		    		 rowcount = dao.delete(pseq);
		    		 if ( searchWord == null || searchWord.equals("")) {
		    			 location += "list.do?delete=success&currentpage=" + currentPage;
		    			} else {
		    				searchCondition = Integer.parseInt(request.getParameter("searchCondition"));
		    				location += "list.do?delete=success&currentpage=" + currentPage + "&searchCondition=" + searchCondition + "&searchWord=" + URLEncoder.encode(searchWord,"UTF-8")  ;    				
		    			}
		    	 } else {
		    		 location += "view.do?seq=" + pseq + "&delete=fail";
		    	 }
		     } catch (SQLException e) {
				System.out.print("> Delete.doPost() Exception...");
				e.printStackTrace();
			}
		     conn.close();
			
			
			// 2. 포워딩 	
			response.sendRedirect(location);
		}
		return null;
	}

}
