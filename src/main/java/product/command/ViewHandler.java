package product.command;

import java.util.Collection;
import java.util.Collections;
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
import productList.domain.AllCateDTO;
import productList.service.ProductListService;
import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import shipping.domain.ShippingOptionDTO;



public class ViewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
		        long id = Long.parseLong(request.getParameter("productcode"));
		        String currentPageParam = request.getParameter("currentPage");
		        int currentPage = currentPageParam != null ? Integer.parseInt(currentPageParam) : 1;
		        int numberPerPage = 5;
						
				
				try {
					ViewService productService = ViewService.getInstance();
					ProductDTO product = productService.getProduct(id);
					List<ProductOptionDTO> productoption = productService.getProductOption(id);
					SpecialPriceDTO specialPrice = productService.getSpecialPrice(id);
					ShippingOptionDTO shippingOption = productService.getShippingOption(id);
					List<ReviewDTO> reviews =productService.getReviews(id);
					List<ReviewImgDTO> reviewImg = productService.getReviewImg(id);
		            List<ReviewDTO> pagedReviews = productService.getPagedReviews(id, currentPage, numberPerPage);
		            int totalPages = productService.getTotalPages(numberPerPage,id);
		            
					
					
					ProductListService cateService = ProductListService.getInstance();
					AllCateDTO selectCate = cateService.selectCate_verProd(id);
					
					
					request.setAttribute("ShippingOption", shippingOption);
					request.setAttribute("specialPrice", specialPrice);
					request.setAttribute("product", product);
					request.setAttribute("productoption", productoption);
					request.setAttribute("reviews", reviews);
					request.setAttribute("reviewImg", reviewImg);
					request.setAttribute("selectCate", selectCate);
					request.setAttribute("crtCateDto", selectCate.getCrtCateDto());
					request.setAttribute("pagedReviews", pagedReviews);
			        request.setAttribute("currentPage", currentPage);
			        request.setAttribute("totalPages", totalPages);
					request.setAttribute("numberPerPage", numberPerPage);

					
				} catch (Exception e) {
					System.out.println("상품정보불러오기실패");
				}
				
				String path = "/product/product.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		return null;
	}

}
