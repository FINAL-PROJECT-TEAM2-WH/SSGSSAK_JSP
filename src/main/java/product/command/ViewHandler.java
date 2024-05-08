package product.command;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.SQLException;

=======
>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import com.util.ConnectionProvider;

import member.domain.BoardDTO;
import member.persistence.BoardDAOImpl;
=======
import controller.CommandHandler;
import product.domain.ProductDTO;
import product.service.ViewService;
>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f



public class ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
<<<<<<< HEAD
		// 조회수 증가 코딩.
				// 게시글 정보 갖고 와서 돌려줘야댐. 
				long pseq = Long.parseLong(request.getParameter("seq"));
				
				String pedit = request.getParameter("edit");
				
				// 해당 글 번호의 상세보기 처리 작업 
				Connection conn = ConnectionProvider.getConnection();
				BoardDAOImpl dao = new BoardDAOImpl(conn);
				BoardDTO dto = null;
				
				try {
					// 쿠키나 세션에 지금 연결된 상태에 봤던 글 번호는 저장을 한다.
					// 쿠키 조회 해서 있으면 X
					if ( pedit == null) dao.increaseReaded(pseq);
					dto = dao.view(pseq);
				} catch (SQLException e) {
					System.out.println("> View.doGet() Exception...");
					e.printStackTrace();
				}
				conn.close();
				// 1.
				request.setAttribute("dto", dto);
				
				String path = "/days06/board/view.jsp";
=======
				
				String id = request.getParameter("productcode");
				
				/*
				 * // 해당 글 번호의 상세보기 처리 작업 Connection conn = ConnectionProvider.getConnection();
				 * ProductDAOImpl dao = new ProductDAOImpl(conn); ProductDTO dto = null;
				 * System.out.println("뷰핸들러호출됨"); try {
				 * 
				 * dto = dao.view(id);
				 * 
				 * } catch (Exception e) { System.out.println("번호 안넘어왔음");
				 * 
				 * }
				 * 
				 * conn.close();
				 */
				
				try {
					
					ViewService productService = ViewService.getInstance();
					ProductDTO product = productService.getProduct(id);
					
					request.setAttribute("product", product);

					
					
				} catch (Exception e) {
					System.out.println("상품정보불러오기실패");
				}
				

				
				
				
				
				
				String path = "/product/product.jsp";
>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		return null;
	}

}
