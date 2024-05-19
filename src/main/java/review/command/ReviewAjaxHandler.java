package review.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import product.service.ViewService;
import review.domain.ReviewDTO;


public class ReviewAjaxHandler extends HttpServlet{


	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		long productcode = Long.parseLong( request.getParameter("productcode"));
		int currentPage = request.getParameter("currentPage") != null? Integer.parseInt(request.getParameter("currentPage")):1;
		int numberPerPage = 10;
		
		try {
			ViewService viewService = ViewService.getInstance();
			List<ReviewDTO> pagedReviews = viewService.getPagedReviews(productcode, currentPage, numberPerPage);
			int totalPages = viewService.getTotalPages(numberPerPage,productcode);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			JSONObject jsonObject = new JSONObject();
			JSONArray reviewsArray =  new JSONArray();
			
			for (ReviewDTO review : pagedReviews) {
				JSONObject reviewJson = new JSONObject();
                reviewJson.put("id", review.getId());
                reviewJson.put("productId", review.getProductId());
                reviewJson.put("memid", review.getMemid());
                reviewJson.put("productOptionId", review.getProductOptionId());
                reviewJson.put("reviewContent", review.getReviewContent());
                reviewJson.put("reviewDate", review.getReviewDate().toString());
                reviewJson.put("reviewType", review.getReviewType());
                reviewJson.put("grade", review.getGrade());
                reviewJson.put("q1", review.getQ1());
                reviewJson.put("q2", review.getQ2());
                reviewJson.put("q3", review.getQ3());
                reviewsArray.add(reviewJson);
			
			}
			jsonObject.put("reviews", reviewsArray);
			jsonObject.put("currentPage", currentPage);
			jsonObject.put("totalPages", totalPages);
			
			response.getWriter().write(jsonObject.toString());
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰제이슨오류");
		}
		
		
	}




	
	
}//class
