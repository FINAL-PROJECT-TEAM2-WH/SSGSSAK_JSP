package product.command;

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



public class ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("viewHandler");
				System.out.println(request.getParameter("productcode"));
				long id =Long.parseLong( request.getParameter("productcode"));

				try {
					
					ViewService productService = ViewService.getInstance();
					ProductDTO product = productService.getProduct(id);
					List<ProductOptionDTO> productoption = productService.getProductOption(id);
					SpecialPriceDTO specialPrice = productService.getSpecialPrice(id);
					
					request.setAttribute("specialPrice", specialPrice);
					request.setAttribute("product", product);
					request.setAttribute("productoption", productoption);
					
				} catch (Exception e) {
					System.out.println("상품정보불러오기실패");
				}
				
				String path = "/product/product.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		return null;
	}

}
