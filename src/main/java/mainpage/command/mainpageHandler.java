package mainpage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import controller.CommandHandler;
import product.domain.ProductDTO;
import product.domain.ProductOptionDTO;
import product.domain.SpecialPriceDTO;
import product.service.ViewService;
import productList.domain.ProductListDTO;
import productList.service.ProductListService;
import shipping.domain.ShippingOptionDTO;




public class mainpageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductListHandler");
		System.out.println(request.getParameter("categoryId"));
		String categoryId = request.getParameter("categoryId");
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int numberPerPage = 4; // 페이지당 상품 수

		try {
			ProductListService service = ProductListService.getInstance();
			ArrayList<ProductListDTO> productList = service.getProductList(categoryId, currentPage, numberPerPage);
			//			int totalProdCount = service.getProdCount(categoryId);
			//			int totalPages = (int) Math.ceil((double) totalProdCount / numberPerPage);

			request.setAttribute("productList", productList);
			//			request.setAttribute("totalProdCount", totalProdCount);
			//			request.setAttribute("totalPages", totalPages);


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리스트뿌리기실패");
		}

		String path = "/main/mainPage.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return null;

	}
}
