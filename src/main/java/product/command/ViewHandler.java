package product.command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import product.domain.ProductDTO;
import product.service.ViewService;



public class ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
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
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		return null;
	}

}
