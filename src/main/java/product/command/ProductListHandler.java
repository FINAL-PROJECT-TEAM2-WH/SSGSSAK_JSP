package product.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import product.domain.ProductListVO;
import product.service.ProductListService;

public class ProductListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String searchWord = null;
		String memid = null;
		ArrayList<ProductListVO> pdList = null;
		try {
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			searchWord = request.getParameter("searchWord");
			memid = (String) memSession.getAttribute("auth");
			ProductListService productListService = ProductListService.getInstance();
			pdList = productListService.pListService(searchWord, memid);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchHandler에서 오류");
		}
		
			System.out.println(pdList);
			request.setAttribute("pdList", pdList);
			
		return null;
	}	
	
}
