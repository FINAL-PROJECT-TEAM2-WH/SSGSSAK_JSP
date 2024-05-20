package productList.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import productList.domain.AllCateDTO;
import productList.domain.PageDTO;
import productList.domain.ProductListDTO;
import productList.service.ProductListService;



public class ProductListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductListHandler");
		System.out.println(request.getParameter("categoryId"));
		String categoryId = request.getParameter("categoryId");
		int numberOfPageBlock = 10; //최대 페이지 수
		int numberPerPage = 8; // 페이지당 상품 수
		int currentPage = 1;
	    if (request.getParameter("currentPage") != null) {
	        try {
	            currentPage = Integer.parseInt(request.getParameter("currentPage"));
	        } catch (NumberFormatException e) {
	            currentPage = 1; 
	            //오류났을때 그냥 1페이지로 보내버림
	        }
	    }
		Connection conn = ConnectionProvider.getConnection();
		try {
			ProductListService service = ProductListService.getInstance();
			AllCateDTO selectCate = service.selectCate(categoryId);
			ArrayList<ProductListDTO> productList = service.getProductList(categoryId, currentPage, numberPerPage);
			int getProdCount = service.getProdCount(categoryId);
			int totalPages = service.getTotalPages(categoryId, numberPerPage);
			
			
			PageDTO pDto = new PageDTO(currentPage, numberPerPage
					, numberOfPageBlock, totalPages);
			request.setAttribute("productList", productList);
			request.setAttribute("getProdCount", getProdCount);
			request.setAttribute("selectCate", selectCate);
			request.setAttribute("crtCateDto", selectCate.getCrtCateDto());
			request.setAttribute("totalPages", totalPages);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("pDto", pDto);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리스트뿌리기실패");
		} finally {
			JdbcUtil.close(conn);
		}
		

//		String path = "/productlist/prodList.jsp";
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
		return "/productlist/prodList.jsp";

	}
}
