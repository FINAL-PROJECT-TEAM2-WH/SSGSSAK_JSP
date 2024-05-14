package mainpage.command;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.env.INameEnvironment;

import controller.CommandHandler;
import product.domain.ProductDTO;
import product.domain.ProductOptionDTO;
import product.domain.SpecialPriceDTO;
import product.service.ViewService;
import shipping.domain.ShippingOptionDTO;



public class mainpageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("mainpageHandler");
				System.out.println(request.getParameter("mainpagecode"));
				long id =Long.parseLong( request.getParameter("mainpage"));

				try {
					
					
					
					
				} catch (Exception e) {
					System.out.println("페이지 로딩 실패");
				}
				
				String path = "/mainpage/mainpage.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		return null;
	}

}
