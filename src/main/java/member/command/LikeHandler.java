package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class LikeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// like 요청이 일어나면 like insert 문에 들어가야합니다.
		// like 상품번호를 넘겨준다. 분기 처리 상품, 브랜드, 카테 like를 queryString으로 분기 처리 해줄거임.
		// 1. like

		String queryString = request.getQueryString();

		// queryString 분기
		
		String productId = request.getParameter("productid");
		System.out.println(productId);

		/*
		 * if (queryString.contains("?product=")) { // 상품 분기 request.getParameter()
		 * 
		 * 
		 * } else if (queryString.contains("?brand=")) {
		 * 
		 * } else if (queryString.contains("?category=")) {
		 * 
		 * }
		 */

		return null;
	}

}
