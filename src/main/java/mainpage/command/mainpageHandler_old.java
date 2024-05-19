package mainpage.command;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import productList.domain.ProductListDTO;
import productList.service.ProductListService;

public class mainpageHandler_old implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("mainpageHandler");
		System.out.println(request.getParameter("categoryId"));
		String categoryId = request.getParameter("categoryId");
		String contextPath = request.getContextPath();
		int numberPerPage = 4; // 페이지당 상품 수

		try {
			ProductListService service = ProductListService.getInstance();
			ArrayList<ProductListDTO> productList = service.getProductList(categoryId, numberPerPage, numberPerPage);
						int totalProdCount = service.getProdCount(categoryId);
						int totalPages = (int) Math.ceil((double) totalProdCount / numberPerPage);

			request.setAttribute("productList", productList);
						request.setAttribute("totalProdCount", totalProdCount);
						request.setAttribute("totalPages", totalPages);
						


		} catch (NumberFormatException e) {
			e.printStackTrace();
			System.out.println("리스트뿌리기실패");
			  
			
		}

		String path = contextPath + "/main/mainPage/WHmake.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return null;
	}

}
