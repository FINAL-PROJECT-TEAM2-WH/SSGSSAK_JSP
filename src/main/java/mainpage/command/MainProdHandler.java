package mainpage.command;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import productList.domain.ProductListDTO;
import productList.service.ProductListService;

public class MainProdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MainpageHandler");
		System.out.println(request.getParameter("categoryId"));
		String categoryId = request.getParameter("categoryId");
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int numberPerPage = 4; // 페이지당 상품 수

		try {
			ProductListService service = ProductListService.getInstance();
			ArrayList<ProductListDTO> productList = service.getProductList(categoryId, currentPage, numberPerPage);
			System.out.println("productList:");
			if (productList != null) {
				for (ProductListDTO dto : productList) {
		            System.out.println("ID: " + dto.getId());
		            System.out.println("Shipping Option ID: " + dto.getShippingOptionId());
		            System.out.println("Seller Store ID: " + dto.getSellerstoreid());
		            System.out.println("Seller Name: " + dto.getSellerName());
		            System.out.println("Brand ID: " + dto.getBrandId());
		            System.out.println("Brand Name: " + dto.getBrandName());
		            System.out.println("Product Name: " + dto.getPDname());
		            System.out.println("Update Day: " + dto.getUpDateDay());
		            System.out.println("Option Price: " + dto.getOptionPrice());
		            System.out.println("Selling Price: " + dto.getSprice());
		            System.out.println("Discount: " + dto.getDiscount());
		            System.out.println("----------------------------------");
				}
			}

            StringBuilder jsonResponse = new StringBuilder();
            jsonResponse.append("[");
            for (ProductListDTO dto : productList) {
            	
            	String imgurl = dto.getImgurl();
                if (imgurl == null) {
                	imgurl = "https://simg.ssgcdn.com/trans.ssg?src=/ui/ssg/img/common/img_ready_500x500.jpg";
//                	imgurl = imgurl.replace("\\", "\\\\");
                } else if (imgurl.contains("\\")) {
                	imgurl = imgurl.replace("\\", "\\\\");

				}
                System.out.println("Modified imgurl: " + imgurl);
            	
                jsonResponse.append("{");
                jsonResponse.append("\"id\":").append(dto.getId()).append(",");
                jsonResponse.append("\"shippingOptionId\":").append(dto.getShippingOptionId()).append(",");
                jsonResponse.append("\"sellerstoreid\":\"").append(dto.getSellerstoreid()).append("\",");
                jsonResponse.append("\"sellerName\":\"").append(dto.getSellerName()).append("\",");
                jsonResponse.append("\"brandId\":\"").append(dto.getBrandId()).append("\",");
                jsonResponse.append("\"brandName\":\"").append(dto.getBrandName()).append("\",");
                jsonResponse.append("\"pDname\":\"").append(dto.getPDname()).append("\",");
                jsonResponse.append("\"upDateDay\":\"").append(dto.getUpDateDay()).append("\",");
                jsonResponse.append("\"optionPrice\":").append(dto.getOptionPrice()).append(",");
                jsonResponse.append("\"sprice\":").append(dto.getSprice()).append(",");
                jsonResponse.append("\"discount\":").append(dto.getDiscount()).append(",");;
                jsonResponse.append("\"imgurl\":\"").append(imgurl).append("\"");
                jsonResponse.append("},");
            }
            // 마지막 쉼표 제거
            if (jsonResponse.charAt(jsonResponse.length() - 1) == ',') {
                jsonResponse.deleteCharAt(jsonResponse.length() - 1);
            }
            jsonResponse.append("]");

            // 응답 데이터를 JSON 형식으로 클라이언트에게 전송
            response.setContentType("application/json;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print(jsonResponse.toString());
            out.flush();
            out.close();


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리스트뿌리기실패");


		}

//		String path = "/main/mainPage/WHmake.jsp";
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
		return null;
	}

}
