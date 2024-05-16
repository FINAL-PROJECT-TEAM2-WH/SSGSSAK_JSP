package productList.command;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import productList.domain.AllCateDTO;
import productList.domain.ProductListDTO;
import productList.service.ProductListService;



public class ProductListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductListHandler");
		System.out.println(request.getParameter("categoryId"));
		String categoryId = request.getParameter("categoryId");
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int numberPerPage = 4; // 페이지당 상품 수

		try {
			ProductListService service = ProductListService.getInstance();
			AllCateDTO selectCate = service.selectCate(categoryId);
			ArrayList<ProductListDTO> productList = service.getProductList(categoryId, currentPage, numberPerPage);
			int getProdCount = service.getProdCount(categoryId);
			//			int totalPages = (int) Math.ceil((double) totalProdCount / numberPerPage);

			request.setAttribute("productList", productList);
			request.setAttribute("getProdCount", getProdCount);
			request.setAttribute("selectCate", selectCate);
			//			request.setAttribute("totalProdCount", totalProdCount);
			//			request.setAttribute("totalPages", totalPages);


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리스트뿌리기실패");
		}

		String path = "/productlist/prodList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		return null;

	}
}
