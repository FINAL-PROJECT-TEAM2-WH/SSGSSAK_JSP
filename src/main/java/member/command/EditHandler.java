package days06.mvc.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAOImpl;

public class EditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String method = request.getMethod(); // GET POST
			
			long pseq = Long.parseLong(request.getParameter("seq"));
			
			if (method.equals("GET") ) {
				
				// 해당 글 번호의 내용 가져오기 
				Connection conn = ConnectionProvider.getConnection();
				BoardDAOImpl dao = new BoardDAOImpl(conn);
				BoardDTO dto = null;
				
				try {
					dto = dao.view(pseq);
				} catch (SQLException e) {
					System.out.println("> View.doGet() Exception...");
					e.printStackTrace();
				}
				
				// 1.
				request.setAttribute("dto", dto);
				
				return "/days06/board/edit.jsp" ;
			} else {
				
				
				request.setCharacterEncoding("UTF-8");
				
				
			      String pwd = request.getParameter("pwd");
			      String email = request.getParameter("email");
			      String title = request.getParameter("title");
			      String content = request.getParameter("content");
			     int tag = Integer.parseInt(request.getParameter("tag"));
			     Connection conn = ConnectionProvider.getConnection();
			     BoardDAOImpl dao = new BoardDAOImpl(conn);
			     int rowcount = 1; 
					/*
					 * BoardDTO dto = new BoardDTO( pseq,"",pwd,email,title,null,0,tag,content);
					 */
			     BoardDTO dto = 
			    		 BoardDTO.builder()
			    		 .seq(pseq)
			    		 .pwd(pwd)
			    		 .email(email)
			    		 .title(title)
			    		 .content(content)
			    		 .tag(tag)
			    		 .build();
			     try {
					rowcount = dao.update(dto);
				} catch (SQLException e) {
					System.out.println("write.dopost() exception");
					e.printStackTrace();
				}
			    conn.close();
				String location = "/jspPro/board/view.do?seq="+pseq;
				location += rowcount ==1 ? "&edit=success" :"&edit=fail"; //작성 완료 실패에 따라서 alert 
				response.sendRedirect(location);
				
			}
		return null;
	}

}
