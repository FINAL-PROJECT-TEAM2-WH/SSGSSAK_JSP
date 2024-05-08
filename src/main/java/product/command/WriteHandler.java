package product.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.BoardDTO;
import member.persistence.BoardDAOImpl;

public class WriteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String method = request.getMethod(); // GET POST
			
			if (method.equals("GET") ) {
				return "/days06/board/write.jsp";
			} else {
				request.setCharacterEncoding("UTF-8");
				String writer = request.getParameter("writer");
			      String pwd = request.getParameter("pwd");
			      String email = request.getParameter("email");
			      String title = request.getParameter("title");
			      String content = request.getParameter("content");
			     int tag = Integer.parseInt( request.getParameter("tag") );
			     Connection conn = ConnectionProvider.getConnection();
			     BoardDAOImpl dao = new BoardDAOImpl(conn);
			     int rowcount = 1; 
			     BoardDTO dto = new BoardDTO(0,writer,pwd,email,title,null,0,tag,content);
			     try {
					rowcount = dao.insert(dto);
				} catch (SQLException e) {
					System.out.println("write.dopost() exception");
					e.printStackTrace();
				}
			     conn.close();
				String location = "/jspPro/board/list.do";
				location += rowcount ==1 ? "?write=success" :"?write=fail"; //작성 완료 실패에 따라서 alert 
				response.sendRedirect(location);
				
			}
		return null;
	}

}
