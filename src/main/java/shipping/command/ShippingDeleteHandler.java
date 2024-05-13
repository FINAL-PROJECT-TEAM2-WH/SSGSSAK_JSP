package shipping.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import shipping.service.ShippingPlaceInfoService;

public class ShippingDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String contextPath = request.getContextPath();
		String location = contextPath+"/shippingPlace/list.do";
		try {
			String temp = request.getParameter("id");
			long id = Long.parseLong(temp);
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			service.shippingPlaceDeleteService(id);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ShippingDeleteHandler이 메서드에서 오류~~");
		}
		response.sendRedirect(location);
		return null;
	}
	
	

}
